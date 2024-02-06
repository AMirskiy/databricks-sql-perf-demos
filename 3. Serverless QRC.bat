SET JMETER_PATH=C:\apache-jmeter-5.6.2\bin
SET USER_PROPERTIES=user.properties
SET TEST_PLAN_PATH=3. Serverless QRC
SET TEST_PLAN=3. Serverless QRC.jmx

call "%JMETER_PATH%\jmeter-t.cmd" ".\%TEST_PLAN_PATH%\%TEST_PLAN%" -p "%~dp0\%USER_PROPERTIES%"