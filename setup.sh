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

DEPLOY_CLONE_URL=https://$GITHUB_USER:$DEPLOY_REPO_ACCESS_TOKEN@$DEPLOY_SCRIPTS_REPO

echo "**** Cloning private repo test"
echo $DEPLOY_CLONE_URL

git clone $DEPLOY_CLONE_URL scripts-internal

ls scripts-internal/

