# 6.2. Stats Filtering


## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Predictive I/O - Stats Filtering** capability of Databricks SQL Serverless! 

**Stats Filtering** leverages delta statistics for data skipping. Each Parquet file in a delta table has statistics, such as minValue, maxValue, nullCount, and numValues. Data filters from a query (e.g., age > 10) are transformed into filters over those statistics values. If a statistics filter fails, the rows over which the statistics were computed can be skipped, saving I/O.

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[6.2. Stats Filtering.bat](6.2.%20Stats%20Filtering.bat) | Windows batch file to start JMeter with **Stats Filtering** test plan. 
[6.2. Stats Filtering.jmx](6.2.%20Stats%20Filtering.jmx) | JMeter test plan, ready for execution, demonstrating **Stats Filtering** capabilities.
[6.2. Stats Filtering.sh](6.2.%20Stats%20Filtering.sh)   | Linux/MacOS shell-script to start JMeter with **Stats Filtering** test plan.
[6.2. Stats Filtering.sql](6.2.%20Stats%20Filtering.sql) | The standalone SQL-script demonstrating **Stats Filtering** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Serverless Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch file or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch file or Linux/MacOS shell-script.
