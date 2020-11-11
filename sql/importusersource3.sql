-- created_at, FirstName, LastName, Email


drop table if exists source3;

CREATE TABLE account (
  id SERIAL,
	created_at TIMESTAMP,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  Email VARCHAR(255),
  PRIMARY KEY (id)
);

COPY source3(created_at, FirstName, LastName, Email) 
FROM '/tmp/data/source3.csv'
DELIMITER ','
CSV HEADER;
