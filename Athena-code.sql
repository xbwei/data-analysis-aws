-- load the data from S3
CREATE EXTERNAL TABLE IF NOT EXISTS elb_logs_orc (
  request_timestamp string,
  elb_name string,
  request_ip string,
  request_port int,
  backend_ip string,
  backend_port int,
  request_processing_time double,
  backend_processing_time double,
  client_response_time double,
  elb_response_code string,
  backend_response_code string,
  received_bytes bigint,
  sent_bytes bigint,
  request_verb string,
  url string,
  protocol string,
  user_agent string,
  ssl_cipher string,
  ssl_protocol string )
STORED AS ORC
LOCATION 's3://athena-examples-us-east-1/elb/orc/year=2015/month=01/'
tblproperties ("orc.compress"="ZLIB");


-- simpe queries
SELECT * FROM elb_logs_orc
limit 10;

SELECT elb_name,
  count(1)
FROM elb_logs_orc
Where elb_response_code = '200'
GROUP BY elb_name
ORDER BY 2 DESC limit 10;
