#!/bin/bash

RANDOM_STRING_0=`cat /dev/urandom | tr -dc 'a-z' | fold -w $((8 + RANDOM % 5)) | head -n 1`
RANDOM_STRING_1=`cat /dev/urandom | tr -dc 'a-z' | fold -w $((8 + RANDOM % 5)) | head -n 1`
RANDOM_STRING_2=`cat /dev/urandom | tr -dc 'a-z' | fold -w $((8 + RANDOM % 5)) | head -n 1`

export GIT_AUTHOR_NAME="${RANDOM_STRING_0}"
export GIT_AUTHOR_EMAIL="${RANDOM_STRING_1}@${RANDOM_STRING_2}.com"

export GIT_COMMITTER_NAME="${GIT_AUTHOR_NAME}"
export GIT_COMMITTER_EMAIL="${GIT_AUTHOR_EMAIL}"
