SET JMETER_PATH=C:\apache-jmeter-5.6.2\bin
SET USER_PROPERTIES=user.properties
SET TEST_PLAN_PATH=1. Disk Cache
SET TEST_PLAN=1. Disk Cache.jmx

call "%JMETER_PATH%\jmeter-t.cmd" ".\%TEST_PLAN_PATH%\%TEST_PLAN%" -p "%~dp0\%USER_PROPERTIES%"