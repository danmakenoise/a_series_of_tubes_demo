CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner VARCHAR(255) NOT NULL
);

INSERT INTO
  cats (id, name, owner)
VALUES
  (1, "Shadow", 'Dan'),
  (2, "Miho", 'Cody');
