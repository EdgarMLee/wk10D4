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

