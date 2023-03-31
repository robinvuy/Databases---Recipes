CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  average_cooking_time_in_minutes int,
  rating_from_1_to_5 int
);

INSERT INTO recipes
  (name, average_cooking_time_in_minutes, rating_from_1_to_5)
  VALUES('Ramen', '60', '5');
INSERT INTO recipes
  (name, average_cooking_time_in_minutes, rating_from_1_to_5)
  VALUES('Tacos', '30', '3');
INSERT INTO recipes
  (name, average_cooking_time_in_minutes, rating_from_1_to_5)
  VALUES('Cheescake', '80', '5');
INSERT INTO recipes
  (name, average_cooking_time_in_minutes, rating_from_1_to_5)
  VALUES('Pop Tarts', '5', '2');