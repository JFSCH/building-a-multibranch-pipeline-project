#!/usr/bin/env sh

echo 'List task definitions, families etc.'
set -x
aws ecs list-task-definitions --family defra-test-1
set +x

set -x
