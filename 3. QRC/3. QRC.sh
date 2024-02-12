#! /bin/sh

# Define the path to the user properties file
USER_PROPERTIES="../user.properties"

# Define the path to the directory containing the test plan; '.' denotes the current directory
TEST_PLAN_PATH="."

# Specify the name of the JMeter test plan file to be executed
TEST_PLAN="3. QRC.jmx"

# Determine the directory of the current script
SOURCE=$(dirname "$0")

# Set JVM arguments to open the 'java.nio' package for all unnamed modules
export JVM_ARGS=--add-opens=java.base/java.nio=ALL-UNNAMED

# Additional JVM options to be included
JAVA_OPTS='--add-opens=java.base/java.nio=ALL-UNNAMED'

# Check if JAVA_OPTS are already part of JVM_ARGS, if not, append them
if [[ "$JVM_ARGS" != *"$JAVA_OPTS"* ]]; then
    export JVM_ARGS="$JAVA_OPTS $JVM_ARGS"
fi

# Execute the JMeter test plan using the specified user properties file
# 'jmeter -t' specifies the test file to run
# The paths to the test plan and user properties file are constructed based on the script's directory
jmeter -t "$SOURCE/$TEST_PLAN_PATH/$TEST_PLAN" -p "$SOURCE/$USER_PROPERTIES"