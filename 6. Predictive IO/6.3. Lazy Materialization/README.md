# 6.3. Lazy Materialization


## Introduction
Welcome to the Databricks SQL performance samples page dedicated to testing the **Predictive I/O - Lazy Materialization** capability of Databricks SQL Serverless! 

**Lazy Column Materialization** builds upon scan filter pushdown. It aims to reduce the amount of I/O operations, by applying filters before read operation. The strategy involves applying a filter before initiating a read operation.

This performance example includes the files detailed in the table below.

File | Description
--- | --- |
[6.3. Lazy Materialization.bat](6.3.%20Lazy%20Materialization.bat) | Windows batch file to start JMeter with **Lazy Materialization** test plan. 
[6.3. Lazy Materialization.jmx](6.3.%20Lazy%20Materialization.jmx) | JMeter test plan, ready for execution, demonstrating **Lazy Materialization** capabilities.
[6.3. Lazy Materialization.sh](6.3.%20Lazy%20Materialization.sh)   | Linux/MacOS shell-script to start JMeter with **Lazy Materialization** test plan.
[6.3. Lazy Materialization.sql](6.3.%20Lazy%20Materialization.sql) | The standalone SQL-script demonstrating **Lazy Materialization** capabilities.


## Getting Started
### Prerequisites
1. JMeter must be installed on the target machine that will be used to run the test plan.
2. Databricks Workspace and Databricks SQL Serverless Warehouse.
3. Personal Access Token (PAT) for the user which will execute JMeter test plan.

### Starting JMeter test plan
1. Update [user.properties](../user.properties) file by providing Databricks SQL Warehouse Host Name, Http Path, and PAT token.
2. Update environment variables in Windows batch file or Linux/MacOS shell-script depending on your platform.
3. Execute Windows batch file or Linux/MacOS shell-script.
