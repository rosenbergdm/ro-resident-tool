


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


CREATE TABLE hospital(
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
  hospital INTEGER NOT NULL REFERENCES hospital.id,
  patient_status INTEGER NOT NULL REFERENCES status.id,
  disease_site VARCHAR(64),
  attending varchar(64),
  intent varchar(32),
  diagnosis text,
  summary_line text,
  status varchar(32), -- on treatment, pending, ...
  plan text,
  chemo text default NULL,
  contours_complete boolean default false,
  contour_notes text,
  plan_eval boolean default false,
  plan_notes text,
  chart_rounds boolean default false,
  completion_summary boolean default false,
  first_seen DATE DEFAULT NULL,
  last_seen DATE DEFAULT NULL,
  last_seen_notes text
);

create table toxicity

  -- things to ref back in tables:
  -- events
  -- toxicities
  -- visits
  -- plan
  -- rt status
  -- completion summary
  -- chart rounds
  -- attending todo
  -- me todo 
  -- consult 
  -- lab values of note 
  -- path 




  






CREATE TABLE comorbidity (
  id SERIAL NOT NULL,
  patient INTEGER NOT NULL REFRENCES patient.id,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  attending VARCHAR(64),

);
