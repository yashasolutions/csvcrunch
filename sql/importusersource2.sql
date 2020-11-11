-- FIRST NAME,LAST NAME,EMAIL,CREATED

drop table if exists galaxy;

CREATE TABLE source2(
  id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(255),
	created VARCHAR,	
  PRIMARY KEY (id)
);

COPY source2(first_name, last_name, email, created)
FROM '/tmp/data/usersource2.csv'
DELIMITER ','
CSV HEADER;
