#!/usr/bin/env bash

# Exit the script as soon as something fails.
set -e

# Where is our config located?
DEFAULT_CONFIG_PATH="/PeerID-backend/config/default.json"
PRODUCTION_CONFIG_PATH="/PeerID-backend/config/production.json"
DEVELOPMENT_CONFIG_PATH="/PeerID-backend/config/development.json"

# Replace all instances of the placeholders with the values above.


## Default

sed -i "s|DB_USER|$DB_USER|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|DB_PASSWORD|$DB_PASSWORD|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|DB_HOST|$DB_HOST|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|DB_PORT|$DB_PORT|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|DB_DATABASE|$DB_DATABASE|g" "${DEFAULT_CONFIG_PATH}"

sed -i "s|GOOGLE_ID|$GOOGLE_ID|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|GOOGLE_SECRET|$GOOGLE_SECRET|g" "${DEFAULT_CONFIG_PATH}"

sed -i "s|FACEBOOK_ID|$FACEBOOK_ID|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|FACEBOOK_SECRET|$FACEBOOK_SECRET|g" "${DEFAULT_CONFIG_PATH}"

sed -i "s|BACKEND_URL|$BACKEND_URL|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|FRONTEND_URL|$FRONTEND_URL|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|FRONTEND_CALLBACK_URL|$FRONTEND_CALLBACK_URL|g" "${DEFAULT_CONFIG_PATH}"

sed -i "s|MAILER_HOST|$MAILER_HOST|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|MAILER_USER|$MAILER_USER|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|MAILER_PASS|$MAILER_PASS|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|MAILER_SENDER|$MAILER_SENDER|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|MAILER_PORT|$MAILER_PORT|g" "${DEFAULT_CONFIG_PATH}"


sed -i "s|PEERPLAYS_WS|$PEERPLAYS_WS|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_FAUCET_URL|$PEERPLAYS_FAUCET_URL|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_REFERRER|$PEERPLAYS_REFERRER|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_PAYMENT_ACCOUNT_ID|$PEERPLAYS_PAYMENT_ACCOUNT_ID|g" "${DEFAULT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_PAYMENT_ACCOUNT_WIF|$PEERPLAYS_PAYMENT_ACCOUNT_WIF|g" "${DEFAULT_CONFIG_PATH}"

## Production

sed -i "s|BACKEND_URL|$BACKEND_URL|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|FRONTEND_URL|$FRONTEND_URL|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|FRONTEND_CALLBACK_URL|$FRONTEND_CALLBACK_URL|g" "${PRODUCTION_CONFIG_PATH}"

sed -i "s|PEERPLAYS_WS|$PEERPLAYS_WS|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|PEERPLAYS_FAUCET_URL|$PEERPLAYS_FAUCET_URL|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|PEERPLAYS_REFERRER|$PEERPLAYS_REFERRER|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|PEERPLAYS_PAYMENT_ACCOUNT_ID|$PEERPLAYS_PAYMENT_ACCOUNT_ID|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|PEERPLAYS_PAYMENT_ACCOUNT_WIF|$PEERPLAYS_PAYMENT_ACCOUNT_WIF|g" "${PRODUCTION_CONFIG_PATH}"

sed -i "s|GOOGLE_ID|$GOOGLE_ID|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|GOOGLE_SECRET|$GOOGLE_SECRET|g" "${PRODUCTION_CONFIG_PATH}"

sed -i "s|FACEBOOK_ID|$FACEBOOK_ID|g" "${PRODUCTION_CONFIG_PATH}"
sed -i "s|FACEBOOK_SECRET|$FACEBOOK_SECRET|g" "${PRODUCTION_CONFIG_PATH}"

sed -i "s|DB_DATABASE|$DB_DATABASE|g" "${PRODUCTION_CONFIG_PATH}"


## Development

sed -i "s|BACKEND_URL|$BACKEND_URL|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|FRONTEND_URL|$FRONTEND_URL|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|FRONTEND_CALLBACK_URL|$FRONTEND_CALLBACK_URL|g" "${DEVELOPMENT_CONFIG_PATH}"

sed -i "s|PEERPLAYS_WS|$PEERPLAYS_WS|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_FAUCET_URL|$PEERPLAYS_FAUCET_URL|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_REFERRER|$PEERPLAYS_REFERRER|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_PAYMENT_ACCOUNT_ID|$PEERPLAYS_PAYMENT_ACCOUNT_ID|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|PEERPLAYS_PAYMENT_ACCOUNT_WIF|$PEERPLAYS_PAYMENT_ACCOUNT_WIF|g" "${DEVELOPMENT_CONFIG_PATH}"

sed -i "s|GOOGLE_ID|$GOOGLE_ID|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|GOOGLE_SECRET|$GOOGLE_SECRET|g" "${DEVELOPMENT_CONFIG_PATH}"

sed -i "s|FACEBOOK_ID|$FACEBOOK_ID|g" "${DEVELOPMENT_CONFIG_PATH}"
sed -i "s|FACEBOOK_SECRET|$FACEBOOK_SECRET|g" "${DEVELOPMENT_CONFIG_PATH}"

sed -i "s|DB_DATABASE|$DB_DATABASE|g" "${DEVELOPMENT_CONFIG_PATH}"


exec "$@"
