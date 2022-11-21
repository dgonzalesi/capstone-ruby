DATABASE My_Catalog

CREATE TABLE source (
  id INTEGER NOT NULL,
  name VARCHAR(100) NOT NULL,
  items ARRAY(VARCHAR(100)) NOT NULL,
  PRIMARY KEY (id)
)

CREATE TABLE label (
  id INTEGER NOT NULL,
  title VARCHAR(100) NOT NULL,
  color VARCHAR(100) NOT NULL,
  items ARRAY(VARCHAR(100)) NOT NULL,
  PRIMARY KEY (id)
)

CREATE TABLE genre (
  id INTEGER NOT NULL,
  name VARCHAR(100) NOT NULL,
  items ARRAY(VARCHAR(100)) NOT NULL,
  PRIMARY KEY (id)
)

CREATE TABLE author (
  id INTEGER NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  items ARRAY(VARCHAR(100)) NOT NULL,
  PRIMARY KEY (id)
)

CREATE TABLE items (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  genre_id INTEGER NOT NULL,
  author_id INTEGER NOT NULL,
  source_id INTEGER NOT NULL,
  label_id INTEGER NOT NULL,
  published_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  FOREIGN KEY (genre_id) REFERENCES genre(id),
  FOREIGN KEY (author_id) REFERENCES author(id),
  FOREIGN KEY (source_id) REFERENCES source(id),
  FOREIGN KEY (label_id) REFERENCES label(id)
)
