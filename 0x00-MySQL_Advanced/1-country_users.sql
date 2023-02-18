-- creates a table users with the following attributes
-- id, email, name and country
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country CHAR(2) NOT NULL DEFULT 'US' CHECK (country IN ('US', 'CO', 'TN'))
);
