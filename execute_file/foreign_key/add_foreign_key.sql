
DROP TABLE IF EXISTS child_table;

DROP TABLE IF EXISTS parent_table;


CREATE TABLE parent_table (
	parent_id INT GENERATED ALWAYS AS IDENTITY NOT NULL UNIQUE,
	parent_name VARCHAR(255) NOT NULL
);

CREATE TABLE child_table (
	child_id INT GENERATED ALWAYS AS IDENTITY,
	parent_id INT ,
	child_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (child_id),
	    CONSTRAINT fk_parent	
	        FOREIGN KEY(parent_id)
		    REFERENCES parent_table (parent_id)

);





INSERT INTO parent_table (
	parent_name)
VALUES ('zhang ba'),
	('li ba');

INSERT INTO child_table (
	child_name, parent_id)
VALUES ( 'zhang er', 1 ),
	('li er', 2);
