#! /bin/sh

USER_PROPERTIES="user.properties"
TEST_PLAN_PATH="3. Serverless QRC"
TEST_PLAN="3. Serverless QRC.jmx"
SOURCE=$(dirname "$0")

export JVM_ARGS=--add-opens=java.base/java.nio=ALL-UNNAMED
JAVA_OPTS='--add-opens=java.base/java.nio=ALL-UNNAMED'
if [[ "$JVM_ARGS" != *"$JAVA_OPTS"* ]]; then
    export JVM_ARGS="$JAVA_OPTS $JVM_ARGS"
fi

jmeter -t "$SOURCE/$TEST_PLAN_PATH/$TEST_PLAN" -p "$SOURCE/$USER_PROPERTIES"
