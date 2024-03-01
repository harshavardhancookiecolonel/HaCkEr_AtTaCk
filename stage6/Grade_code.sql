CREATE TABLE teacher (
    person_id VARCHAR(9) PRIMARY KEY,
    class_code TEXT
);

.mode csv
.import --skip 1 teacher.csv teacher
.mode column

CREATE TABLE score1(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "score" INTEGER
);

.mode csv
.import --skip 1 score1.csv score1
.mode column

CREATE TABLE score2(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "score" INTEGER
);

.mode csv
.import --skip 1 score2.csv score2
.mode column


CREATE TABLE score3(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "score" INTEGER
);

.mode csv
.import --skip 1 score3.csv score3
.mode column

CREATE TABLE "person"(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "full_name" TEXT,
  "address" TEXT,
  "building_number" TEXT,
  "phone_number" TEXT
);

.mode csv
.import --skip 1 person.csv person 
.mode column

CREATE TABLE "student"(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "grade_code" TEXT
);

INSERT INTO student(person_id)
SELECT person_id
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher);

CREATE TABLE score(
  "person_id" VARCHAR(9),
  "score" INTEGER
);

INSERT INTO score
SELECT * FROM score1
UNION ALL
SELECT * FROM score2
UNION ALL
SELECT * FROM score3;

DROP TABLE IF EXISTS score1;
DROP TABLE IF EXISTS score2;
DROP TABLE IF EXISTS score3;

UPDATE student
SET grade_code = 
  CASE 
    WHEN person_id IN (SELECT person_id FROM score WHERE score IS NOT NULL) THEN
      CASE 
        WHEN (SELECT COUNT(*) FROM score WHERE person_id = student.person_id) = 0 THEN 'GD-09'
        WHEN (SELECT COUNT(*) FROM score WHERE person_id = student.person_id) = 1 THEN 'GD-10'
        WHEN (SELECT COUNT(*) FROM score WHERE person_id = student.person_id) = 2 THEN 'GD-11'
        WHEN (SELECT COUNT(*) FROM score WHERE person_id = student.person_id) = 3 THEN 'GD-12'
      END
    ELSE 'GD-09'
  END;

SELECT *
FROM student
ORDER BY person_id
LIMIT 5;
