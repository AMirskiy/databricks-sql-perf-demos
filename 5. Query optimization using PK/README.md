# 5. Query optimization using Primary Key constraints

## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Query optimization using Primary Key** capability of Databricks SQL Serverless! 

[Query optimization using primary key constraints](!https://learn.microsoft.com/en-us/azure/databricks/sql/user/queries/query-optimization-constraints) capabilities leverage primary key constraints information to eliminate unnecessary steps in query execution, hence improving query performance. This includes eliminating unnecessary joins and aggregations.

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[5. Query optimization using PK.bat](5.%20Query%20optimization%20using%20PK.bat) | Windows batch file to start JMeter with **Query optimization using PK constraints** test plan. 
[5. Query optimization using PK.jmx](5.%20Query%20optimization%20using%20PK.jmx) | JMeter test plan, ready for execution, demonstrating **Query optimization using PK constraints** capabilities.
[5. Query optimization using PK.sh](5.%20Query%20optimization%20using%20PK.sh)   | Linux/MacOS shell-script to start JMeter with **Query optimization using PK constraints** test plan.
[5. Query optimization using PK.sql](5.%20Query%20optimization%20using%20PK.sql) | The standalone SQL-script demonstrating **Query optimization using PK constraints** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Serverless Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch file or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch file or Linux/MacOS shell-script.
