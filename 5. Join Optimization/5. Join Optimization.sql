-- 1. Create test dataset
DROP CATALOG IF EXISTS ${CatalogName} CASCADE;
CREATE CATALOG IF NOT EXISTS ${CatalogName};
CREATE SCHEMA IF NOT EXISTS ${CatalogName}.${SchemaName};
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.lineitem AS SELECT * FROM samples.tpch.lineitem;
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.orders AS SELECT * FROM samples.tpch.orders;
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.part AS SELECT * FROM samples.tpch.part;
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.supplier AS SELECT * FROM samples.tpch.supplier;
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.customer AS SELECT * FROM samples.tpch.customer;
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.region AS SELECT * FROM samples.tpch.region;
CREATE TABLE IF NOT EXISTS ${CatalogName}.${SchemaName}.nation AS SELECT * FROM samples.tpch.nation;
ALTER TABLE ${CatalogName}.${SchemaName}.orders DROP PRIMARY KEY IF EXISTS;
ALTER TABLE ${CatalogName}.${SchemaName}.part DROP PRIMARY KEY IF EXISTS;
ALTER TABLE ${CatalogName}.${SchemaName}.supplier DROP PRIMARY KEY IF EXISTS;
ALTER TABLE ${CatalogName}.${SchemaName}.customer DROP PRIMARY KEY IF EXISTS;
ALTER TABLE ${CatalogName}.${SchemaName}.region DROP PRIMARY KEY IF EXISTS;
ALTER TABLE ${CatalogName}.${SchemaName}.nation DROP PRIMARY KEY IF EXISTS;
CACHE SELECT * from ${CatalogName}.${SchemaName}.lineitem;
CACHE SELECT * from ${CatalogName}.${SchemaName}.orders;
CACHE SELECT * from ${CatalogName}.${SchemaName}.part;
CACHE SELECT * from ${CatalogName}.${SchemaName}.supplier;
CACHE SELECT * from ${CatalogName}.${SchemaName}.customer;


-- 2. Run the test query without JOIN optimization
select sum(l_quantity)
from ${CatalogName}.tpch.lineitem
    left join ${CatalogName}.${SchemaName}.orders   on l_orderkey=o_orderkey
    left join ${CatalogName}.${SchemaName}.part     on l_partkey=p_partkey
    left join ${CatalogName}.${SchemaName}.supplier on l_suppkey=s_suppkey
    left join ${CatalogName}.${SchemaName}.customer on o_custkey=c_custkey
    left join ${CatalogName}.${SchemaName}.nation   on c_nationkey=n_nationkey
    left join ${CatalogName}.${SchemaName}.region   on n_regionkey=r_regionkey
;


-- 3. Create primary keys
ALTER TABLE ${CatalogName}.${SchemaName}.part ALTER COLUMN p_partkey SET NOT NULL;
ALTER TABLE ${CatalogName}.${SchemaName}.part ADD PRIMARY KEY (p_partkey) RELY;
ALTER TABLE ${CatalogName}.${SchemaName}.supplier ALTER COLUMN s_suppkey SET NOT NULL;
ALTER TABLE ${CatalogName}.${SchemaName}.supplier ADD PRIMARY KEY (s_suppkey) RELY;
ALTER TABLE ${CatalogName}.${SchemaName}.customer ALTER COLUMN c_custkey SET NOT NULL;
ALTER TABLE ${CatalogName}.${SchemaName}.customer ADD PRIMARY KEY (c_custkey) RELY;
ALTER TABLE ${CatalogName}.${SchemaName}.nation ALTER COLUMN n_nationkey SET NOT NULL;
ALTER TABLE ${CatalogName}.${SchemaName}.nation ADD PRIMARY KEY (n_nationkey) RELY;
ALTER TABLE ${CatalogName}.${SchemaName}.region ALTER COLUMN r_regionkey SET NOT NULL;
ALTER TABLE ${CatalogName}.${SchemaName}.region ADD PRIMARY KEY (r_regionkey) RELY;
ALTER TABLE ${CatalogName}.${SchemaName}.orders ALTER COLUMN o_orderkey SET NOT NULL;
ALTER TABLE ${CatalogName}.${SchemaName}.orders ADD PRIMARY KEY (o_orderkey) RELY;


-- 4. Run the test query with JOIN optimization
select sum(l_quantity)
from ${CatalogName}.tpch.lineitem
    left join ${CatalogName}.${SchemaName}.orders   on l_orderkey=o_orderkey
    left join ${CatalogName}.${SchemaName}.part     on l_partkey=p_partkey
    left join ${CatalogName}.${SchemaName}.supplier on l_suppkey=s_suppkey
    left join ${CatalogName}.${SchemaName}.customer on o_custkey=c_custkey
    left join ${CatalogName}.${SchemaName}.nation   on c_nationkey=n_nationkey
    left join ${CatalogName}.${SchemaName}.region   on n_regionkey=r_regionkey
;

-- 4. Drop test dataset
DROP CATALOG IF EXISTS ${CatalogName} CASCADE;
