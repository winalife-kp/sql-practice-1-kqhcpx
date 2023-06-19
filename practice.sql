CREATE TABLE people (
  id INTEGER,
  name TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE animals (
  id INTEGER,
  name VARCHAR,
  personId INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (personId) REFERENCES people(id)
);

INSERT INTO people (id, name)
VALUES (1, 'Jane Doe'),(2, 'Kirubakaran Athmanathan'),(3, 'Val Mett');

INSERT INTO animals (id, name, personId)
VALUES (1, 'Luna', 1),
(2, 'Charlie', 1),
(3, 'Lucy', 2),
(4, 'Cooper', 2),
(5, 'Daisy', 3);

-- 1. Find names of people that do not have any animal.
-- 2. Find names of people that own an animal whose name includes letter 'a'.
-- 3. List all animals along with its owner.