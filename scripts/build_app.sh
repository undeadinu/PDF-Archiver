#!/bin/bash

REPO_FOLDER="$(git rev-parse --show-toplevel)"

# workaroung added from: https://github.com/CocoaPods/CocoaPods/issues/8000
export EXPANDED_CODE_SIGN_IDENTITY=""
export EXPANDED_CODE_SIGN_IDENTITY_NAME=""
export EXPANDED_PROVISIONING_PROFILE=""

# build the app
xcodebuild clean
xcodebuild build -quiet -workspace PDFArchiver.xcworkspace -scheme PDFArchiver -configuration Debug CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CONFIGURATION_BUILD_DIR="$REPO_FOLDER/build/"
