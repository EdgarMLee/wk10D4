-- PHASE 1
CREATE TABLE Cats (
 name varchar(50),
 birth_year integer,
 toy_id INTEGER,
 FOREIGN KEY (toy_id) REFERENCES Toys(id)
 );

CREATE TABLE Owners (
 first_name varchar(15),
 last_name varchar(15)
 );

CREATE TABLE Toys (
 name varchar(15)
);

CREATE TABLE cat_owner (
  cat_id INTEGER,
  owner_id INTEGER,
  FOREIGN KEY (cat_id) REFERENCES Cats(id)
  FOREIGN KEY (owner_id) REFERENCES Owners(id)
)
