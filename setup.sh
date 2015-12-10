#!/bin/bash
set -e
# env

if [ X"$TRAVIS_SECURE_ENV_VARS" = X"true" ]; then
npm login <<!
${NPM_USERNAME}
${NPM_PASSWORD}
${NPM_EMAIL}
!
else
  echo "TRAVIS: TRAVIS_SECURE_ENV_VARS env variable not set to true"
fi

echo "**** Cloning private repo test"
echo $DEPLOY_SCRIPTS_REPO
git clone $DEPLOY_SCRIPTS_REPO scripts-internal
