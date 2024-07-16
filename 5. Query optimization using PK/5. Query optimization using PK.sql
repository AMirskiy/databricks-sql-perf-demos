-- Create test catalog and schema

-- CREATE CATALOG IF NOT EXISTS join_optimization;
-- USE CATALOG join_optimization;
-- CREATE SCHEMA IF NOT EXISTS join_optimization.tpch;
-- USE SCHEMA tcph;

-- =====================================================================================================================
-- Preparation
-- =====================================================================================================================

-- Create test tables based on samples.tpch dataset
CREATE OR REPLACE TABLE lineitem AS SELECT * FROM samples.tpch.lineitem;
CREATE OR REPLACE TABLE orders AS SELECT * FROM samples.tpch.orders;
CREATE OR REPLACE TABLE part AS SELECT * FROM samples.tpch.part;
CREATE OR REPLACE TABLE supplier AS SELECT * FROM samples.tpch.supplier;
CREATE OR REPLACE TABLE customer AS SELECT * FROM samples.tpch.customer;
CREATE OR REPLACE TABLE nation AS SELECT * FROM samples.tpch.nation;
CREATE OR REPLACE TABLE region AS SELECT * FROM samples.tpch.region;

-- Drop any PK if exists
ALTER TABLE orders DROP PRIMARY KEY IF EXISTS;
ALTER TABLE part DROP PRIMARY KEY IF EXISTS;
ALTER TABLE supplier DROP PRIMARY KEY IF EXISTS;
ALTER TABLE customer DROP PRIMARY KEY IF EXISTS;
ALTER TABLE nation DROP PRIMARY KEY IF EXISTS;
ALTER TABLE region DROP PRIMARY KEY IF EXISTS;


-- =====================================================================================================================
-- Executing sample query without PK constraints
-- =====================================================================================================================

-- Test query - here the engine scans all tables to execute the query
-- Execute several times to warm up disk cache
set use_cached_result=false;
select sum(l_quantity), min(l_tax)
from lineitem
    left join orders on l_orderkey=o_orderkey
    left join part on l_partkey=p_partkey
    left join supplier on l_suppkey=s_suppkey
    left join customer on o_custkey=c_custkey
    left join nation on c_nationkey=n_nationkey
    left join region on n_regionkey=r_regionkey;

-- Create a view to wrap up the same query
create or replace view v_join_optimization as
select *
from lineitem
    left join orders   on l_orderkey=o_orderkey
    left join part     on l_partkey=p_partkey
    left join supplier on l_suppkey=s_suppkey
    left join customer on o_custkey=c_custkey
    left join nation   on c_nationkey=n_nationkey
    left join region   on n_regionkey=r_regionkey;

-- Test query using a view - here the engine scans all tables to execute the query
-- Execute several times to warm up disk cache
set use_cached_result=false;
select sum(l_quantity), min(l_tax) from v_join_optimization;


-- =====================================================================================================================
-- Executing sample query with optimizations using PK constraints
-- =====================================================================================================================

-- Define primary keys using RELY keyword
ALTER TABLE orders ALTER COLUMN o_orderkey SET NOT NULL;
ALTER TABLE orders ADD PRIMARY KEY (o_orderkey) RELY;
ALTER TABLE part ALTER COLUMN p_partkey SET NOT NULL;
ALTER TABLE part ADD PRIMARY KEY (p_partkey) RELY;
ALTER TABLE supplier ALTER COLUMN s_suppkey SET NOT NULL;
ALTER TABLE supplier ADD PRIMARY KEY (s_suppkey) RELY;
ALTER TABLE customer ALTER COLUMN c_custkey SET NOT NULL;
ALTER TABLE customer ADD PRIMARY KEY (c_custkey) RELY;
ALTER TABLE nation ALTER COLUMN n_nationkey SET NOT NULL;
ALTER TABLE nation ADD PRIMARY KEY (n_nationkey) RELY;
ALTER TABLE region ALTER COLUMN r_regionkey SET NOT NULL;
ALTER TABLE region ADD PRIMARY KEY (r_regionkey) RELY;

-- Execute test query - here we see that only lineitem table is scanned to execute the query, hence more efficient
set use_cached_result=false;
select sum(l_quantity), min(l_tax)
from lineitem
    left join orders on l_orderkey=o_orderkey
    left join part on l_partkey=p_partkey
    left join supplier on l_suppkey=s_suppkey
    left join customer on o_custkey=c_custkey
    left join nation on c_nationkey=n_nationkey
    left join region on n_regionkey=r_regionkey;

-- Execute test query using the view - here we see that only lineitem table is scanned to execute the query, hence more efficient
set use_cached_result=false;
select sum(l_quantity), min(l_tax) from v_join_optimization;


-- =====================================================================================================================
-- Cleanup
-- =====================================================================================================================

-- DROP CATALOG IF EXISTS join_optimization CASCADE;
