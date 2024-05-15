# Join Optimization

## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Join Optimizations** capability of the Databricks SQL Serverless! 

[Query optimization using primary key constraints](!https://learn.microsoft.com/en-us/azure/databricks/sql/user/queries/query-optimization-constraints)

????????????????????????????????

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[5. Join Optimization.bat](5.%20Join%20Optimization.bat) | Windows batch file to start JMeter with **Join Optimization** test plan. 
[5. Join Optimization.jmx](5.%20Join%20Optimization.jmx) | JMeter test plan, ready for execution, demonstrating **Join Optimization** capabilities.
[5. Join Optimization.sh](5.%20Join%20Optimization.sh)   | Linux/MacOS shell-script to start JMeter with **Join Optimization** test plan.
[5. Join Optimization.sql](5.%20Join%20Optimization.sql) | The standalone SQL-script demonstrating **Join Optimization** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Serverless Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch file or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch file or Linux/MacOS shell-script.
