CREATE TYPE account_permissions AS ENUM('admin','moderator', 'account');

CREATE TABLE account
(
	id_user SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,
	password VARCHAR(20) NOT NULL,
	permissions account_permissions NOT NULL DEFAULT 'account'
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
	comment_text varchar(255),
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);


INSERT INTO account (first_name, email, password) VALUES ('Василь','babala@gmail.com','bab001');
INSERT INTO account (first_name, email, password) VALUES ('Кудярський','kudiar@gmail.com','kud002');
INSERT INTO account (first_name, email, password) VALUES ('Крижанівський','marko@gmail.com','krizh003');
INSERT INTO account (first_name, email, password) VALUES ('Колесник','kalipso@gmail.com','kol004');
INSERT INTO account (first_name, email, password) VALUES ('Хамурда','khamurdik@gmail.com','ham005');

INSERT INTO post (id_user, post_text) VALUES (1,'Сон001');
INSERT INTO post (id_user, post_text) VALUES (1,'Сон002');
INSERT INTO post (id_user, post_text) VALUES (2,'Сон003');
INSERT INTO post (id_user, post_text) VALUES (3,'Сон004');
INSERT INTO post (id_user, post_text) VALUES (4,'Сон005');
INSERT INTO post (id_user, post_text) VALUES (5,'Сон006');
INSERT INTO post (id_user, post_text) VALUES (2,'Сон007');


INSERT INTO comment (id_user, id_post, comment_text) VALUES (2,1,'хаха');
INSERT INTO comment (id_user, id_post, comment_text) VALUES (3,2,'Непоганий сон.');