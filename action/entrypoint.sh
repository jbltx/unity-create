#!/usr/bin/env bash

source ./steps/activate.sh

#
# Display the unity version
#
echo "Creating a project using Unity version \"$UNITY_VERSION\"."

CREATE_OUTPUT=$(xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
    /opt/Unity/Editor/Unity \
      -batchmode \
      -nographics \
      -logFile /dev/stdout \
      -quit \
      -createProject $PROJECT_PATH)

# Store the exit code from the verify command
UNITY_EXIT_CODE=$?

#
# Display information about the result
#
if [ $UNITY_EXIT_CODE -eq 0 ]; then
  echo ""
  echo "###########################"
  echo "#     Project created     #"
  echo "###########################"
  echo ""
else 
  echo ""
  echo "###########################"
  echo "#         Failure         #"
  echo "###########################"
  echo ""
fi

#
# Exit with code from Unity process
#
exit $UNITY_EXIT_CODE