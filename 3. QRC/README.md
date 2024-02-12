# Query Result Cache (QRC)

## Introduction
Welcome to the Databricks SQL and Demo page dedicated to testing the  Query Result Cache (QRC) capability of the Databricks SQL Warehouse! 

In the Query Result Caching (QRC) architecture, query results are stored in the in-memory tier to maintain low access latency for cache hits, particularly for queries with high Queries Per Second (QPS) repeatability. This approach ensures rapid data retrieval as results are fetched directly from the cache, eliminating the need to execute a query.

This repository offers a collection of reusable JMeter assets designed explicitly for conducting performance assessments and evaluating the impact of QRC on enhancing BI workloads.

The reusable assets provided are detailed in the table below.

Asset Name | Description
--- | --- |
QRC.bat | In a Windows environment, set the required environment variables and start the JMeter process based on the configuration.
QRC.jmx | A JMeter test plan, ready for execution, demonstrating the QRC capabilities.
QRC.sh | In a Unix / Linux environment, set the required environment variables and start the JMeter process based on the configuration.
QRC.sql | The file constaing the SQL code used to run the JMeter test plan.


## Getting Started
### Prerequisites
JMeter must be installed on the target machine that will be used to run the test plan.

## Contributing
We welcome contributions from the community! Whether it's adding new features, fixing bugs, or improving documentation, your help is invaluable. Please refer to our CONTRIBUTING.md file for guidelines on how to make a contribution.

