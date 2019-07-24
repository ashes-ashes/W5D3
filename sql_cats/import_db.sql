DROP TABLE cattoys;

DROP TABLE toys;

DROP TABLE cats;

CREATE TABLE cats (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  color VARCHAR(255),
  breed VARCHAR(255)
);

CREATE TABLE toys (
  id SERIAL PRIMARY KEY,
  price INTEGER,
  color VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE cattoys (
  id SERIAL PRIMARY KEY,
  cat_id INTEGER REFERENCES cats(id),
  toy_id INTEGER REFERENCES toys(id)
);

INSERT INTO
  cats (name, color, breed)
VALUES
  ('Santa Claus', 'white', 'Persian');

INSERT INTO
  cats (name, color, breed)
VALUES
  ('Tiger', 'brown tabby', 'Maine Coon');

INSERT INTO
  cats (name, color, breed)
VALUES
  ('Nom', 'white with grey points', 'Ragdoll');

INSERT INTO
  cats (name, color, breed)
VALUES
  ('George', 'orange', 'American Shorthair');

INSERT INTO
  cats (name, color, breed)
VALUES
  ('Kyuubey', 'white', 'Incubator');

INSERT INTO
  toys (price, color, name)
VALUES
  (20, 'gold', 'jingle bells');

INSERT INTO
  toys (price, color, name)
VALUES
  (1, 'brown', 'cardboard tube');

INSERT INTO
  toys (price, color, name)
VALUES
  (4, 'purple', 'feather on a string');

INSERT INTO
  toys (price, color, name)
VALUES
  (10, 'grey', 'catnip mouse');

INSERT INTO
  toys (price, color, name)
VALUES
  (500, 'pink', 'soul gem');

INSERT INTO
  cattoys (cat_id, toy_id)
VALUES
  (5, 5);

INSERT INTO
  cattoys (cat_id, toy_id)
VALUES
  (1, 1);

INSERT INTO
  cattoys (cat_id, toy_id)
VALUES
  (1, 3);

INSERT INTO
  cattoys (cat_id, toy_id)
VALUES
  (2, 4);

INSERT INTO
  cattoys (cat_id, toy_id)
VALUES
  (3, 2);