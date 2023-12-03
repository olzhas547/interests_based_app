create database if not exists testdb;
use testdb;
create external table if not exists users (
  id string,
  ip string,
  login string,
  password string,
  username string
)
create external table if not exists recommendations (
  id string,
  recommended_id string
)
create external table if not exists tokens (
  id string,
  user_id string,
  expires timestamp
)
create external table if not exists user_info (
  id string,
  trait1 integer,
  trait2 integer,
  trait3 integer,
  trait4 integer,
  trait5 integer
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/employee';
