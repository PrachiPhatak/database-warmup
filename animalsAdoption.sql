use another_test_db;

DROP TABLE IF EXISTS animals;

CREATE TABLE animals
(
    animal_id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name         VARCHAR(50) DEFAULT 'NONE',
    type         VARCHAR(50) NOT NULL,
    age          int,
    size         VARCHAR(50),
    is_adoptable boolean,
    is_cute      boolean,
    PRIMARY KEY (animal_id)
);

INSERT INTO another_test_db.animals (name, type, age, size, is_adoptable, is_cute)
VALUES ('dog1', 'husky', 2, 'small', 1, 0),
       ('cat1', 'cat', 4, 'big', 0, 1),
       ('cat2', 'cat', 6, 'big', 1, 1),
       ('cat3', 'cat', 4, 'small', 0, 1),
       ('dog2', 'dog', 4, 'big', 0, 1),
       ('dog4', 'dog', 4, 'big', 0, 1),
       ('dog3', 'dog', 6, 'medium', 1, 1),
       ('tiger', 'tiger', 6,  'big', 1, 1),
       ('frog1', 'frog', 6, 'small', 1, 1),
       ('dog3', 'dog', 6, 'medium', 1, 1);

DESCRIBE animals;

select * from animals where type ="dog";