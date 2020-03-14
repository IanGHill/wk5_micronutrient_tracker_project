DROP TABLE IF EXISTS consumed_foods;
DROP TABLE IF EXISTS nutrient_levels;
DROP TABLE IF EXISTS nutrients;
DROP TABLE IF EXISTS mealtimes;
DROP TABLE IF EXISTS foods;

CREATE TABLE foods (
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    type VARCHAR (255)
);

CREATE TABLE mealtimes (
    id SERIAL PRIMARY KEY,
    name VARCHAR (255)
);

CREATE TABLE nutrients (
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    rda FLOAT(3),
    uom VARCHAR (255),
    type VARCHAR(255)
);

CREATE TABLE nutrient_levels (
    id SERIAL PRIMARY KEY,
    foods_id INT REFERENCES foods(id) ON DELETE CASCADE,
    nutrients_id INT REFERENCES nutrients(id) ON DELETE CASCADE,
    nutrient_level FLOAT(3)
);

CREATE TABLE consumed_foods (
    id SERIAL PRIMARY KEY,
    foods_id INT REFERENCES foods(id) ON DELETE CASCADE,
    mealtimes_id INT REFERENCES mealtimes(id) ON DELETE CASCADE,
    quantity INT
);
