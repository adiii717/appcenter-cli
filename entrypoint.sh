#!/bin/sh
echo "Checking build artifacts"
    echo "Publishing $APK_FILE_PATH to App Center"
    appcenter distribute release \
        --group Collaborators \
        --file "${APK_FILE_PATH}" \
        --release-notes 'App submission via Codemagic' \
        --app "${USER_NAME}"/"${PROJECT_NAME}" \
        --token "${APP_CENTER_TOKEN}" \
        --quiet

exec "$@"