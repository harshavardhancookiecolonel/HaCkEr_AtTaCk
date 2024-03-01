You have the score table that contains the student's annual scores. 
But you don't know the students grade_code. 
First-year students do not have an annual score.
Sophomores have one score and so on. With this information, fill in grade_code in the student table.

Objectives

Let's break the task into several steps:

Keep table creation statements from the previous steps;

Update grade_code in the student table;

Select all records from the student table, order by person_id, and limit by 5;

Hint

If there is no score in the score table, the grade code is GD-09;

If the score count is 1 in the score table, the grade code is GD-10;

If the score count is 2 in the score table, the grade code is GD-11;

If the score count is 3 in the score table, the grade code will be GD-12.

Example 1:

Output:

person_id  grade_code
---------  ----------

AA-990456  GD-09

AC-744667  GD-09

AE-227862  GD-09

AE-640140  GD-11

AF-906227  GD-09
