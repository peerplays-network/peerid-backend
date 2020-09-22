const passport = require('passport');
const GoogleStrategy = require('passport-google-oauth').OAuth2Strategy;

class GoogleController {

  /**
   * @param {UserService} opts.userService
   * @param {AppConfig} opts.config
   */
  constructor(opts) {
    this.userService = opts.userService;
    this.config = opts.config;

    this.DEFAULT_SCOPE = [
      'https://www.googleapis.com/auth/userinfo.profile',
      'https://www.googleapis.com/auth/userinfo.email',
    ];
  }

  /**
   * Array of routes processed by this controller
   * @returns {*[]}
   */
  getRoutes(app) {
    /**
     * @swagger
     *
     * /auth/google:
     *  get:
     *    description: Auth by google
     *    summary: Auth by google
     *    produces:
     *      - application/json
     *    tags:
     *      - SocNetwork
     *    responses:
     *      302:
     *        description: Redirect to google
     */
    this.initializePassport();
    app.get('/api/v1/auth/google', passport.authenticate('google', {
      scope: this.DEFAULT_SCOPE,
      access_type: 'offline'
    }));

    app.get('/api/v1/auth/google/callback', (req, res) => {
      passport.authenticate(
        'google',
        {failureRedirect: `${this.config.frontendUrl}/error?google-auth-error=restrict`}
      )(req, res, (err) => {

        if (err) {
          res.redirect(`${this.config.frontendUrl}/error?google-auth-error=${err.message}`);
          return;
        }

        const newUser = req.session.newUser;
        res.redirect(`${this.config.frontendCallbackUrl}/${newUser ? 'profile' : ''}`);

      });

    });

    return [];
  }

  initializePassport() {
    passport.use(new GoogleStrategy({
      passReqToCallback: true,
      clientID: this.config.google.clientId,
      clientSecret: this.config.google.clientSecret,
      callbackURL: `${this.config.backendUrl}/api/v1/auth/google/callback`
    }, (req, accessToken, profile, done) => {
      this.userService.getUserBySocialNetworkAccount('google', {
        id: profile.id,
        ...profile._json,
        username: profile._json.email.replace(/@.+/, '')
      }, accessToken, req).then((User) => {
        this.userService.getCleanUser(User).then((user) => done(null, user));
      }).catch((error) => {
        done(error);
      });
    }));
  }

}

module.exports = GoogleController;