CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(100) UNIQUE,
	balance INTEGER DEFAULT 0
);


INSERT INTO 
	users (name, email, balance)
VALUES
	(:name, :email, 0)
ON CONFLICT (email) DO NOTHING;

SELECT balance FROM users WHERE email = :email;
	
UPDATE users SET balance = balance + 100 WHERE email = :email;

