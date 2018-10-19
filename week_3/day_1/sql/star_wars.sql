DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR (255),
  age INT,
  dark_side BOOLEAN
);

CREATE TABLE lightsabers (
  id serial8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters (name, dark_side, age)
       VALUES ( 'Han Solo', false, 32);

INSERT INTO characters (name, dark_side, age)
       VALUES ( 'Luke Skywalker', false, 19);

INSERT INTO characters (name, dark_side, age)
       VALUES ( 'Darth Vader', true, 50);

INSERT INTO characters (name, dark_side, age)
       VALUES ( 'Leia Organa', false, 19);

INSERT INTO characters (name, dark_side, age)
       VALUES ( 'Obi-Wan Kenobi', false, 70);

INSERT INTO lightsabers (colour, hilt_metal, character_id)
       VALUES ('Green', 'Steel', 3);

INSERT INTO lightsabers (colour, hilt_metal, character_id)
       VALUES ('Red', 'Gold', 4);

INSERT INTO lightsabers (colour, hilt_metal, character_id)
       VALUES ('Blue', 'Damascus', 4);

INSERT INTO lightsabers (colour, hilt_metal, character_id)
       VALUES ('Blue', 'Copper', 5);

SELECT * FROM characters;

SELECT * FROM lightsabers;
