#!/usr/bin/env sh

echo 'Run task'
set -x
aws ecs run-task --cli-input-json $JENKINS_VARS
set +x

