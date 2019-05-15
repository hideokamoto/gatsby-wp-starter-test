#!/bin/bash -x
env

if [ "${INCOMING_HOOK_BODY}" == "" ] ; then
  echo 'No webhook'
  exit 0
fi

echo "${INCOMING_HOOK_BODY}"
echo "${INCOMING_HOOK_BODY}" | jq -r .

npm run build