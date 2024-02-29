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

SELECT "person_id", "score" FROM score1
UNION ALL
SELECT "person_id", "score" FROM score2
UNION ALL
SELECT "person_id", "score" FROM score3

/* SELECT person_id, full_name
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher)
ORDER BY full_name
LIMIT 5; */

/* SELECT COUNT(person_id)
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher); */

/* SELECT *
FROM student
ORDER BY person_id
LIMIT 5; */


