-- PHASE 1

DROP TABLE IF EXISTS toys;
DROP TABLE IF EXISTS cat_owners;
DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS owners;

CREATE TABLE cats (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 name text,
 birth_year integer
 );

CREATE TABLE owners (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 first_name text,
 last_name text
 );

CREATE TABLE toys (
 name varchar(15),
 cat_id INTEGER,
 FOREIGN KEY (cat_id) REFERENCES cats(id)
);

CREATE TABLE cat_owners (
  cat_id INTEGER,
  owner_id INTEGER,
  FOREIGN KEY (cat_id) REFERENCES cats(id)
  FOREIGN KEY (owner_id) REFERENCES owners(id)
);

-- PHASE 3
SELECT cats.name
FROM cats
JOIN cat_owners ON (cats.id = cat_owners.cat_id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE owners.first_name = 'Hermione'

SELECT toys.name
FROM toys
JOIN cats ON (toys.cat_id = cats.id)
JOIN cat_owners ON (cats.owner_id = cats.id)
JOIN owners ON (cat_owners.owner_id = owners.id)
WHERE owners.first_name = 'Hermione'

SELECT toys.name
FROM toys
JOIN cat_owners ON (cat_owners.cat_id = toys.cat_id)
JOIN owners ON (cat_owners.owner_id = owners.id)
WHERE owners.first_name = 'Hermione'

-- PHASE 4
CREATE TABLE cat_owners (
  cat_id INTEGER,
  owner_id INTEGER,
  FOREIGN KEY (cat_id) REFERENCES cats(id) ON DELETE CASCADE
  FOREIGN KEY (owner_id) REFERENCES owners(id) ON DELETE CASCADE
)

CREATE TABLE toys (
 name varchar(15),
 cat_id INTEGER,
 FOREIGN KEY (cat_id) REFERENCES cats(id) ON DELETE CASCADE
);

-- PHASE 5
SELECT *
FROM owners
WHERE owners.last_name LIKE '%%'

SELECT name, birth_year
FROM cats
ORDER BY birth_year DESC;

SELECT first_name, last_name
FROM owners
WHERE cats.birth_year > 2015;

SELECT cats.name
FROM cat_owners
JOIN cats ON (cat_owners.cat_id = cats.id)
JOIN owners ON (cat_owners.owner_id = owners.id)
WHERE owners.first_name = 'George' OR owners.first_name = 'Melynda';

-- PHASE 6
UPDATE toys
SET name = 'Test'
WHERE toys.cat_id IN
(SELECT cats.id FROM cats WHERE name = 'Garfield');
