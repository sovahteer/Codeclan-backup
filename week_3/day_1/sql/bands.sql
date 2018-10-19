DROP TABLE musicians;
DROP TABLE bands;

CREATE TABLE bands (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL
);

CREATE TABLE musicians (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  role VARCHAR(255) NOT NULL,
  bands_id INT8 REFERENCES bands(id)
);

INSERT INTO bands (name, genre)
       VALUES ('Foo Fighters', 'Hard Rock');

INSERT INTO bands (name, genre)
       VALUES ('Gorillaz', 'Alternative');

INSERT INTO musicians (name, role, bands_id)
       VALUES ('Dave Grohl', 'Singer/Lead Guitar/Drums', 1);

INSERT INTO musicians (name, role, bands_id)
       VALUES ('Taylor Hawkins', 'Drums', 1);

INSERT INTO musicians (name, role, bands_id)
       VALUES ('Pat Smear', 'Rhythm Guitar', 1);

INSERT INTO musicians (name, role, bands_id)
       VALUES ('2D', 'Vocals', 2);

INSERT INTO musicians (name, role, bands_id)
       VALUES ('Murdoc', 'Bass Guitar', 2);

INSERT INTO musicians (name, role, bands_id)
       VALUES ('Noodle', 'Lead Guitar', 2);

INSERT INTO musicians (name, role, bands_id)
       VALUES ('Russel', 'Drums', 2);

SELECT * FROM bands;

SELECT * FROM musicians;
