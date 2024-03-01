Description

You've learned how to merge the scores. Now, create the score table. Insert the scores into the score table. When everything is done, delete score1, score2, and score3 tables with the DROP command.

Objectives

Let's break the task into several steps:

Keep table creation statements from the previous steps;

Create the score table;

Insert data from the score1, score2, and score3 tables into the score table;

Use the DROP command and delete score1, score2, and score3 tables;

Select all columns from the score table. Order the results by person_id. Limit results to 5;

Select person_id, count(score) from the score table. Group by person_id. Having count(score) value 3 and order the results by person_id. Limit results to 5;

Example 1:

Output:

person_id  score
---------  -----

AE-640140  96

AE-640140  97

AF-992719  99

BB-744852  82

BB-744852  88

person_id  count(score)
---------  ------------

BH-465461  3

CB-137658  3

CF-172009  3

DC-711801  3

DD-100740  3
