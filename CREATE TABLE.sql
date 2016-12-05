CREATE TABLE account
(
	id_user SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,
	password VARCHAR(20) NOT NULL
);

CREATE TABLE post
(
	id_post SERIAL PRIMARY KEY,
	id_user INT,
	post_text TEXT,
	created_at TIMESTAMPNOT NULL DEFAULT now()
);

CREATE TABLE comment
(
	id_comment SERIAL PRIMARY KEY,
	id_user INT,
	id_post INT,
	comment_text varchar(255),
	created_at TIMESTAMP NOT NULL DEFAULT now()
);


INSERT INTO account (first_name, email, password) VALUES ('Vasya','babala@gmail.com','bab001');
INSERT INTO account (first_name, email, password) VALUES ('Igor','kudiar@gmail.com','kud002');
INSERT INTO account (first_name, email, password) VALUES ('Marko','marko@gmail.com','krizh003');
INSERT INTO account (first_name, email, password) VALUES ('Fnadiy','kalipso@gmail.com','kol004');
INSERT INTO account (first_name, email, password) VALUES ('Khamurdik','khamurdik@gmail.com','ham005');

INSERT INTO post (id_user, post_text) VALUES (1,'Dream001');
INSERT INTO post (id_user, post_text) VALUES (1,'Dream002');
INSERT INTO post (id_user, post_text) VALUES (2,'Dream003');
INSERT INTO post (id_user, post_text) VALUES (3,'Dream004');
INSERT INTO post (id_user, post_text) VALUES (4,'Dream005');
INSERT INTO post (id_user, post_text) VALUES (5,'Dream006');
INSERT INTO post (id_user, post_text) VALUES (2,'Dream007');


INSERT INTO comment (id_user, id_post, comment_text) VALUES (2,1,'haha');
INSERT INTO comment (id_user, id_post, comment_text) VALUES (3,2,'Not a bad dream.');