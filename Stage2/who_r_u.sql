CREATE TABLE teacher (
    person_id VARCHAR(9) PRIMARY KEY,
    class_code TEXT
);

.mode csv
.import --skip 1 teacher.csv teacher
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

SELECT person_id, full_name
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher)
ORDER BY full_name
LIMIT 5;

SELECT COUNT(person_id)
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher);

