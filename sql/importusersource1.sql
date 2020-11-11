-- last_sign_in_at,email,name,gender,birthday,language,name,name,city,sn_provider,sn_id


drop table if exists ;

CREATE TABLE source1(
  id SERIAL,
	last_sign_in_at VARCHAR(20),
  email VARCHAR(255),
  name VARCHAR(255),
  gender VARCHAR(20),
  birthday INTEGER,
	language VARCHAR(50),
	country VARCHAR(30),
	region VARCHAR(50),
	city VARCHAR(50),
	sn_provider VARCHAR(50),
	sn_id VARCHAR(50), 
	extra VARCHAR(25), 
  PRIMARY KEY (id)
);

COPY source1(last_sign_in_at,email,name,gender,birthday,language,country, city,sn_provider,sn_id, extra) 
FROM '/tmp/data/usersource1.csv'
DELIMITER ','
CSV HEADER;
