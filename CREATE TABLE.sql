CREATE TYPE account_permissions AS ENUM('admin','moderator', 'account');

CREATE TABLE account
(
	id_user SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	password VARCHAR(20) NOT NULL,
);

CREATE TABLE post
(
	id_post SERIAL PRIMARY KEY,
	id_user INT,
	post_text TEXT,
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

CREATE TABLE comment
(
	id_comment SERIAL PRIMARY KEY,
	id_user INT,
	id_post INT,
	post_text varchar(255),
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);