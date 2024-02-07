# Databricks SQL performance demos

## Overview
This repo contains a collection of simple and reproducible demos of various Databricks SQL performance features.

## Prerequisites
The demos are built as Apache JMeter test plans, therefore you need to have Apache JMeter installed.

### Installing JMeter on Windows
To install and configure JMeter on Windows, follow these instructions:
1. Make sure that you have Java 8 or higher.
2. Download JMeter from the official [Download page](https://jmeter.apache.org/download_jmeter.cgi).
3. Unzip it to the preferred folder.
4. Download the latest [Databricks JDBC driver](https://www.databricks.com/spark/jdbc-drivers-download).
5. Unzip Databricks JDBC driver and copy JAR-file to %JMETER%\lib folder.

### Installing JMeter on MacOS
To install and configure JMeter on MacOS using [Homebrew](https://brew.sh/), follow these instructions:
1. Make sure that you have Homebrew installed in your environment
```shell
brew -version
```
2. Install JMeter by executing the following commands
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install jmeter
```

## Configuration
In order to configure JMeter test plans to use your Databricks environment adjust **user.properties** file by providing correct values for the following properties. The values can be found in **Connection details** of Databricks SQL Warehouse in your environment.
- **HostName** - the host name of Databricks SQL Warehouse, e.g. _adb-0123456789.0.azuredatabricks.net_
- **HttpPath** - the http path of Databricks SQL Warehouse, e.g. _/sql/1.0/warehouses/abcdefghijk_
- **WarehouseID** - (optional) the ID of Databricks SQL Warehouse, i.e. the string after _/sql/1.0/warehouses/_ in **HttpPath**.
- **token** - personal access token to authenticate in Databricks SQL warehouses.


## List of demos
1. [Disk Cache](1.%20Disk%20Cache/)
2. [Sample Test Plans](Sample%20Test%20Plans/)
- [Basic Configuration](Sample%20Test%20Plans/Basic%20Configuration/)
- [Advanced Configuration](Sample%20Test%20Plans/Advanced%20Configuration/)
- [Expert Configuration](Sample%20Test%20Plans/Expert%20Configuration/)
3. [QRC - Query Result Cache](3.%20QRC/)
4. [Serverless QRC - Serverless Query Result Cache](4.%20Serverless%20QRC/)

