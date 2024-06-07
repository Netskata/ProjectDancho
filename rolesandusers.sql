CREATE ROLE Manager;
GRANT ALL PRIVILEGES ON PROJECT_YV.* TO Manager;

CREATE ROLE CONSULTANT;
GRANT SELECT ON TABLE orders TO CONSULTANT;

CREATE ROLE customer;
GRANT SELECT (name, description, price) ON products TO customer;

CREATE USER admin_user IDENTIFIED BY 'password';
GRANT store_admin TO admin_user;

CREATE USER cs_user IDENTIFIED BY 'password';
GRANT CONSULTANT TO cs_user;

CREATE USER customer_user IDENTIFIED BY 'password';
GRANT customer TO customer_user;