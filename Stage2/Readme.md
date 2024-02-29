Description

Your friend created another file. Now you know who the teachers are. First, create the teacher table from teacher.csv. Then compare the teacher table with the person table and find out who the students are.

Objectives

Let's break the task into several steps:

Keep table creation statements from the previous step;

Create the teacher table;

Change the mode to csv;

Import data from teacher.csv to the teacher table;

Change the mode to column;

Select every record from the person table that is missing in the teacher table. This will give you the student's list. Sort the results by full_name in ascending order. Limit results to 5;

Use a select statement to find out the number of the students;

Count all entries from combined table.


Example 1:

Output:

person_id  full_name

---------  --------------

DC-711801  Adrian Anthony

BA-441588  Adrian Rowe

EF-444609  Andrea Hubbard

CG-998149  Andrew Wilson

FE-915587  Andrew Wood

COUNT(person_id)

----------------

90
