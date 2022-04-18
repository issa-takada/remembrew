CREATE DATABASE IF NOT EXISTS remembrew
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_ja_0900_as_cs;

USE remembrew;

CREATE TABLE IF NOT EXISTS brews (
  id SMALLINT
  date DATE
  blend_id
  grind
  beanweight
  waterweight
  time
  temp
  method
  water
  strength
  acidity
  water_temp TINYINT UNSIGNED
  water_mass SMALLINT UNSIGNED
  bean_mass TINYINT UNSIGNED  
  );

CREATE TABLE IF NOT EXISTS brews_grind
  (grind);
INSERT IGNORE INTO brews_size (grind) VALUES
  ("Coarse"),
  ("Medium Coarse"),
  ("Medium"),
  ("Fine"),
  ("Extra Fine");

CREATE TABLE IF NOT EXISTS brews_pour
  (brew_id,
  water,
  pour_time,
  wait_time);

CREATE TABLE IF NOT EXISTS blends
  (id SMALLINT
  name VARCHAR
  shop VARCHAR
  date_purchased DATE
  price );

CREATE TABLE IF NOT EXISTS roasts
  (id SMALLINT
  blend
  percentage
  date_roasted DATE
  country
  species
  processing
  profile);

CREATE TABLE IF NOT EXISTS roasts_country
  (country);
INSERT IGNORE INTO roasts_country (country) VALUES
  ("Bolivia"),
  ("Brazil"),
  ("Burundi"),
  ("Colombia"),
  ("Costa Rica"),
  ("Ecuador"),
  ("El Salvador"),
  ("Ethiopia"),
  ("Guatemala"),
  ("Honduras"),
  ("Indonesia"),
  ("Jamaica"),
  ("Kenya"),
  ("Mexico"),
  ("Nicaragua"),
  ("Panama"),
  ("Peru"),
  ("Philippines"),
  ("Rwanda"),
  ("Tanzania"),
  ("Thailand"),
  ("Vietnam"),
  ("Other");

CREATE TABLE IF NOT EXISTS roasts_species
  (species);
INSERT IGNORE INTO roasts_species (species) VALUES
  ("Arabica"),
  ("Robusta"),
  ("Other");

CREATE TABLE IF NOT EXISTS roasts_processing
  (processing);
INSERT IGNORE INTO roasts_processing (processing) VALUES
  ("Washed"),
  ("Natural"),
  ("Pulped Natural"),
  ("Other");

CREATE TABLE IF NOT EXISTS roasts_profile
  (profile);
INSERT IGNORE INTO roasts_profile (profile) VALUES
  ("Light Roast"),
  ("Medium Roast"),
  ("Medium-Dark Roast"),
  ("Dark Roast"),
  ("1-Light"),
  ("2-Cinnamon"),
  ("3-Medium"),
  ("4-High"),
  ("5-City"),
  ("6-Full City"),
  ("7-French"),
  ("8-Italian"),
  ("Other");
