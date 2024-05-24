create database apim_db character set latin1;
create database shared_db;
CREATE USER 'apimadmin'@'%' IDENTIFIED BY 'pass@123';
GRANT ALL ON apim_db.* TO 'apimadmin'@'%';
CREATE USER 'sharedadmin'@'%' IDENTIFIED BY 'pass@123';
GRANT ALL ON shared_db.* TO 'sharedadmin'@'%';
FLUSH PRIVILEGES;