# Remote Query Result Cache

## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Remote Query Result Cache** capability of the Databricks SQL Serverless! 

Unlike local **Query Result Cache**, where query results are stored in the in-memory, [Remote Query Result Caching (QRC)](!https://learn.microsoft.com/en-us/azure/databricks/sql/admin/query-caching) stores query results on remote storage. This approach ensures rapid query result retrieval as results are fetched directly from the cache, eliminating the need to execute a query even in cases of Databricks SQL Warehouse restarts or scales in/out.

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[Remote QRC.bat](4.%20Remote%20QRC.bat) | Windows batch file to start JMeter with **Remote QRC** test plan. 
[Remote QRC.jmx](4.%20Remote%20QRC.jmx) | JMeter test plan, ready for execution, demonstrating **Remote QRC** capabilities.
[Remote QRC.sh](4.%20Remote%20QRC.sh)   | Linux/MacOS shell-script to start JMeter with **Remote QRC** test plan.
[Remote QRC.sql](4.%20Remote%20QRC.sql) | The standalone SQL-script demonstrating **Remote QRC** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL **Serverless** Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch files or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch files or Linux/MacOS shell-script.
