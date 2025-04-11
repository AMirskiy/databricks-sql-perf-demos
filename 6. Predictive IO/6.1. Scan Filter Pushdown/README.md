# 6.1. Scan Filter Pushdown


## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Predictive I/O - Scan Filter Pushdown** capability of Databricks SQL Serverless! 

**Scan Filter Pushdown** allows filtering data with the WHERE clause as early as possible, saving time on decompressing and decoding unnecessary data. This leads to CPU time reduction. 

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[6.1. Scan Filter Pushdown.bat](6.1.%20Scan%20Filter%20Pushdown.bat) | Windows batch file to start JMeter with **Scan Filter Pushdown** test plan. 
[6.1. Scan Filter Pushdown.jmx](6.1.%20Scan%20Filter%20Pushdown.jmx) | JMeter test plan, ready for execution, demonstrating **Scan Filter Pushdown** capabilities.
[6.1. Scan Filter Pushdown.sh](6.1.%20Scan%20Filter%20Pushdown.sh)   | Linux/MacOS shell-script to start JMeter with **Scan Filter Pushdown** test plan.
[6.1. Scan Filter Pushdown.sql](6.1.%20Scan%20Filter%20Pushdown.sql) | The standalone SQL-script demonstrating **Scan Filter Pushdown** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Serverless Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch file or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch file or Linux/MacOS shell-script.
