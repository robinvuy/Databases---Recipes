CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  average_cooking_time_in_minutes int,
  rating_from_1_to_5 int
);