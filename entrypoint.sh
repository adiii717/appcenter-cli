echo "Checking build artifacts"
APK_FILE_PATH
if [[ -z ${APK_FILE_PATH} ]]
then
echo "No apks were found, skip publishing to App Center"
elif [ -f "$FILE" ]; then
    echo "$FILE exists."
    echo "Publishing $APK_FILE_PATH to App Center"
    appcenter distribute release \
        --group Collaborators \
        --file "${APK_FILE_PATH}" \
        --release-notes 'App submission via Codemagic' \
        --app "${USER_NAME}"/"${PROJECT_NAME}" \
        --token "${APP_CENTER_TOKEN}" \
        --quiet
fi
else
echo "File not found"
fi