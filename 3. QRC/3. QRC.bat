:: Set the path to the JMeter installation directory
SET JMETER_PATH=C:\apache-jmeter-5.6.2\bin

:: Set the path to the user properties file relative to the script's location
SET USER_PROPERTIES=..\user.properties

:: Set the path to the directory containing the test plan; '.' denotes the current directory
SET TEST_PLAN_PATH=.

:: Specify the name of the JMeter test plan file to be executed
SET TEST_PLAN=3. QRC.jmx

:: Execute the JMeter test plan using the specified user properties file
:: "%JMETER_PATH%\jmeter-t.cmd" - Specifies the command to run JMeter in terminal mode
:: ".\%TEST_PLAN_PATH%\%TEST_PLAN%" - Specifies the path to the JMeter test plan file
:: -p "%~dp0\%USER_PROPERTIES%" - Specifies the path to the user properties file; "%~dp0" expands to the drive and path of the current batch script
call "%JMETER_PATH%\jmeter-t.cmd" ".\%TEST_PLAN_PATH%\%TEST_PLAN%" -p "%~dp0\%USER_PROPERTIES%"