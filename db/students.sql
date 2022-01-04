CREATE TABLE students (
    id INT,
    name VARCHAR(30) NOT NULL,
    age INT,
    city VARCHAR(30),
    grade FLOAT
)

INSERT INTO students VALUES 
()


-- DELETE FROM <table name> WHERE <statement>
-- UPDATE <table name> SET <col> = <value> WHERE <statement>
-- UPDATE students SET grade = value+4 WHERE name = "maya"
-- UPDATE students SET CASE WHEN age <25 THEN grade+3 WHEN age> 25 THEN grade -3 ELSE grade END
