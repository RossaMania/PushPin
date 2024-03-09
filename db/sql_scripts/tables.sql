CREATE TABLE places (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    string VARCHAR,
    description VARCHAR,
    text VARCHAR,
    trip VARCHAR,
    references VARCHAR,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

ALTER TABLE trips (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE places (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    trip_id INTEGER REFERENCES trips(id), -- foreign key reference
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

ALTER TABLE places
ADD COLUMN trip_id INTEGER NOT NULL;

ALTER TABLE places
ADD CONSTRAINT fk_rails_... FOREIGN KEY (trip_id)
REFERENCES trips (id);

ALTER TABLE trips
SET name VARCHAR(100)

ALTER TABLE trips
SET COLUMN name VARCHAR(100);

ALTER TABLE trips
ALTER COLUMN name VARCHAR(100);

ALTER TABLE trips
ALTER COLUMN name SET VARCHAR(100);

ALTER TABLE trips
ALTER COLUMN name TYPE VARCHAR(100);

ALTER TABLE places
ADD COLUMN date_visited TIMESTAMP NOT NULL;

ALTER TABLE places
ADD COLUMN date_visited TYPE TIMESTAMP NOT NULL;

ALTER TABLE places
ADD COLUMN date_visited TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL;

-- Down
ALTER TABLE places
DROP COLUMN IF EXISTS date_visited;

-- Up
CREATE TABLE links (
  id SERIAL PRIMARY KEY,
  url VARCHAR(255),
  linkable_id INTEGER NOT NULL,
  linkable_type VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);

-- Down
DROP TABLE IF EXISTS links;

-- Up
ALTER TABLE links
ADD COLUMN name VARCHAR(255);

-- Down
ALTER TABLE links
DROP COLUMN IF EXISTS name;