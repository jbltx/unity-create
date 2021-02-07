#!/usr/bin/env bash

source /steps/activate.sh

#
# Display the unity version
#
echo "Creating a project using Unity version \"$UNITY_VERSION\"."

CREATE_OUTPUT=$(unity-editor \
      -batchmode \
      -nographics \
      -stackTraceLogType Full \
      -logFile - \
      -quit \
      -createProject $PROJECT_PATH)

# Store the exit code from the verify command
UNITY_EXIT_CODE=$?

#
# Display information about the result
#
if [ $UNITY_EXIT_CODE -eq 0 ]; then
  chmod -R a+rw $PROJECT_PATH
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

source /steps/return_license.sh

#
# Exit with code from Unity process
#
exit $UNITY_EXIT_CODE