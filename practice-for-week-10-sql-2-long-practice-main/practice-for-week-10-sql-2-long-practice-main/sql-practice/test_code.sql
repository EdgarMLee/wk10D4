-- PHASE 1
CREATE TABLE cats (
 name varchar(50),
 birth_year integer
 );

CREATE TABLE owners (
 first_name varchar(15),
 last_name varchar(15)
 );

CREATE TABLE toys (
 name varchar(15),
 cat_id INTEGER,
 FOREIGN KEY (cat_id) REFERENCES cats(id)
);

CREATE TABLE cat_owner (
  cat_id INTEGER,
  owner_id INTEGER,
  FOREIGN KEY (cat_id) REFERENCES cats(id)
  FOREIGN KEY (owner_id) REFERENCES owners(id)
);

-- PHASE 3
SELECT cats.name
FROM cats
JOIN owners
ON (cats.owner_id = owners.id)
WHERE owners.name = 'Hermione'

SELECT toys.name
FROM cats
JOIN owners
ON (cats.owner_id = owners.id)
WHERE owners.name = 'Hermione'

-- PHASE 4
CREATE TABLE cat_owner (
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
SELECT name
FROM owners
WHERE

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
