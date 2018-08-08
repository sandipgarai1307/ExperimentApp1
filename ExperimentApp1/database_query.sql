show databases;
use experiment_db_1;

create table user_master
(	id BIGINT PRIMARY KEY auto_increment,
	name VARCHAR(255) NOT NULL,
	login_id VARCHAR(125) UNIQUE NOT NULL,
	pass VARCHAR(255)
);

show TABLES;

create table role_master
(	id BIGINT PRIMARY KEY auto_increment,
	role_name VARCHAR(255) NOT NULL
);