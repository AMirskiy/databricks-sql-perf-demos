# 6.4. Dictionary Filtering


## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Predictive I/O - Dictionary Filtering** capability of Databricks SQL Serverless! 

**Dictionary Filtering** capitalizes on filtering directly on the dictionary's numerically encoded values in Parquet rather than having to decode the value for subsequent filtering.

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[6.4. Dictionary Filtering.bat](6.4.%20Dictionary%20Filtering.bat) | Windows batch file to start JMeter with **Dictionary Filtering** test plan. 
[6.4. Dictionary Filtering.jmx](6.4.%20Dictionary%20Filtering.jmx) | JMeter test plan, ready for execution, demonstrating **Dictionary Filtering** capabilities.
[6.4. Dictionary Filtering.sh](6.4.%20Dictionary%20Filtering.sh)   | Linux/MacOS shell-script to start JMeter with **Dictionary Filtering** test plan.
[6.4. Dictionary Filtering.sql](6.4.%20Dictionary%20Filtering.sql) | The standalone SQL-script demonstrating **Dictionary Filtering** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Serverless Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch file or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch file or Linux/MacOS shell-script.
