--- creates a table users with the atributes
--- id, integer, never null, auto increment and public key
--- email, string, never null and unique
--- name, string
--- script can be executed in any database
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT NOT NULL AUTO-INCREMENT PRIMARY KEY,
	email VARCHAR (255) NOT NULL UNIQUE,
	name VARCHAR (255)
);
