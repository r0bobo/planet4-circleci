#!/usr/bin/env bash
set -eu

MSG_TYPE="${TYPE:-Job} FAILED: ${CIRCLE_PROJECT_REPONAME}" \
MSG_TITLE="${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME} @ ${CIRCLE_BRANCH:-${CIRCLE_TAG}}" \
MSG_LINK="${CIRCLE_BUILD_URL}" \
MSG_TEXT="${CIRCLE_JOB}
Build #${CIRCLE_BUILD_NUM}
Ref: ${CIRCLE_BRANCH:-${CIRCLE_TAG}}
Commit: ${CIRCLE_COMPARE_URL}" \
MSG_COLOUR="red" \
${HOME}/scripts/notify-rocketchat.sh
