show databases;
use experiment_db_1;

create table user_master
(	id BIGINT PRIMARY KEY auto_increment,
	name VARCHAR(255) NOT NULL,
	login_id VARCHAR(125) UNIQUE NOT NULL,
	pass VARCHAR(255),
	is_active INT(15) DEFAULT 1
);

drop TABLE user_master;

show TABLES;

create table role_master
(	id BIGINT PRIMARY KEY auto_increment,
	role_name VARCHAR(255) NOT NULL
);


create table user_role
(	id BIGINT PRIMARY KEY auto_increment,
	user_id_fk BIGINT NOT NULL,
	role_id_fk BIGINT NOT NULL,
	FOREIGN KEY (user_id_fk) REFERENCES user_master(id),
	FOREIGN KEY (role_id_fk) REFERENCES role_master(id)
);