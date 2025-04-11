-- Create test catalog and schema

 CREATE CATALOG IF NOT EXISTS predictiveio;
 CREATE SCHEMA IF NOT EXISTS predictiveio.tpch;


-- =====================================================================================================================
-- Preparation
-- =====================================================================================================================

-- 1. Create demo table
create or replace table predictiveio.tpch.lineitem_orders_lazy_materialization
tblproperties (delta.targetFileSize = 67108864)
as 
select
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where 1=1
  and r_name='ASIA' and o_orderdate='1997-12-31' and l_shipmode='MAIL'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA'
union all
select 
  r_name as region
  , lineitem.*
  , orders.*
  , customer.*
  , nation.*
  , region.*
from samples.tpch.orders 
  join samples.tpch.lineitem on o_orderkey=l_orderkey
  join samples.tpch.customer on c_custkey=o_custkey
  join samples.tpch.nation on c_nationkey=n_nationkey
  join samples.tpch.region on n_regionkey=r_regionkey
where r_name<>'ASIA';



-- 2. Sample query
select count(l_linenumber), sum(l_quantity)
from predictiveio.tpch.lineitem_orders_lazy_materialization 
where 1=1
  and r_name like 'ASI%';


-- 3. Cleanup
drop table if exists predictiveio.tpch.lineitem_orders_lazy_materialization;

-- =====================================================================================================================
-- Cleanup
-- =====================================================================================================================

DROP CATALOG IF EXISTS predictiveio CASCADE;