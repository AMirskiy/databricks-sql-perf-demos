# Databricks SQL performance demos

## Prerequisites
These demos use JMeter testing software to showcase various Databricks SQL performance features.
To install aand configure JMeter follow these instructions:
1. Download JMeter from the official [Download page](https://jmeter.apache.org/download_jmeter.cgi).
2. Unzip it to the preferred folder.
3. Download the latest [Databricks JDBC driver](https://www.databricks.com/spark/jdbc-drivers-download).
4. Unzip Databricks JDBC driver and copy JAR-file to %JMETER%\lib folder.

## Installation
Configure **user.properties** file by providing **HostName**, **HttpPath**, **WarehouseID**, and **token** specific to your Databricks environment.

## Sample Test Plans
1. [Basic Configuration](1.%20Basic%20Configuration/)
2. [Advanced Configuration](2.%20Advanced%20Configuration/)
3. [Expert Configuration](1.%20Expert%20Configuration/)

## List of demos
1. [Disk Cache](1.%20Disk%20Cache/)
2. [QRC - Query Result Cache](2.%20QRC/)
3. [Serverless QRC - Serverless Query Result Cache](3.%20Serverless%20QRC/)

