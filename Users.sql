use f1_2021;

-- Creates the admin user and grants full access
CREATE ROLE 'DBA';
CREATE ROLE 'standardUser';
GRANT ALL ON f1_2021_season TO 'DBA';
GRANT SELECT ON f1_2021_season TO 'standardUser';

-- Create users and assign them created roles
CREATE USER 'admin' IDENTIFIED BY 'password';
CREATE USER 'user' IDENTIFIED BY 'password';

GRANT 'DBA' TO 'admin';
GRANT 'standardUser' TO 'user';

