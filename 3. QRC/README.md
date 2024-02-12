# Query Result Cache (QRC)

## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Query Result Cache (QRC)** capability of the Databricks SQL! 

In the [Query Result Caching (QRC)](!https://learn.microsoft.com/en-us/azure/databricks/sql/admin/query-caching) architecture, query results are stored in the in-memory tier to maintain low access latency for cache hits, particularly for queries with high Queries Per Second (QPS) repeatability. This approach ensures rapid data retrieval as results are fetched directly from the cache, eliminating the need to execute a query.

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[QRC.bat](3.%20QRC.bat) | Windows batch file to start JMeter with QRC test plan. 
[QRC.jmx](3.%20QRC.jmx) | JMeter test plan, ready for execution, demonstrating the QRC capabilities.
[QRC.sh](3.%20QRC.sh)   | Linux/MacOS shell-script to start JMeter with QRC test plan.
[QRC.sql](3.%20QRC.sql) | The standalone SQL-script demonstrating the QRC capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch files or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch files or Linux/MacOS shell-script.
