CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER,

  FOREIGN KEY(owner_id) REFERENCES human(id)
);

CREATE TABLE humans (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

INSERT INTO
  humans (id, name)
VALUES
  (1, "Dan Phillips"),
  (2, "Cody Whistler");

INSERT INTO
  cats (id, name, owner_id)
VALUES
  (1, "Shadow", 1),
  (2, "Miho", 2);
