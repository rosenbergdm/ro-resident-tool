CREATE TABLE intent (
  id SERIAL NOT NULL,
  -- INCOMPLETE
)

CREATE TABLE category (
  id SERIAL NOT NULL,
  -- INCOMPLETE
)

CREATE TABLE treatment_type (
  id SERIAL NOT NULL,
  intent INTEGER REFERENCES intent.id,
  category INTEGER REFERENCES category.id
  -- INCOMPLETE
)


CREATE TABLE hospital (
  id SERIAL NOT NULL,
  name VARCHAR(128)
  -- Incomplete placeholder --
);

CREATE TABLE patient (
  id SERIAL NOT NULL,
  fname VARCHAR(64) NOT NULL,
  lname VARCHAR(64) NOT NULL,
  fullname VARCHAR(128) DEFAULT NULL, -- Only if the first / last thing doesnt work
  dob DATE DEFAULT NULL,
  mrn INTEGER NOT NULL,
  hospital INTEGER NOT NULL REFERENCES hospital.id




);

