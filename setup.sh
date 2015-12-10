#!/bin/bash
set -e
# env

DEPLOY_CLONE_URL=https://$GITHUB_USER:$DEPLOY_REPO_ACCESS_TOKEN@$DEPLOY_SCRIPTS_REPO

echo "**** Cloning private repo test"
echo $DEPLOY_CLONE_URL

git clone $DEPLOY_CLONE_URL scripts-internal

ls scripts-internal/

