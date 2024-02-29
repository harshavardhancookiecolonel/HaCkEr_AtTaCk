Description

Your friends created three more csv files for you. 

These files contain the person_id of the students and the annual score.

But, unfortunately, your friends didn't tell you the grade_code of the results. You need to find it out in the following steps.

Now, for this step, first create three temporary tables with the csv files. And then, with the union command, merge them all together.

Objectives

Let's break the task into several steps:

Keep table creation statements from the previous steps;

Create three tables. With the name score1, score2, and score3;

Change mode to csv;

Import data from csv files to the tables. Files names are score1.csv, score2.csv, and score3.csv;

Change mode to column;

Select all the data from the score tables and merge them together with the UNION ALL command;

Example 1:

Output:

person_id  score

---------  -----

BH-465461  86

DG-884779  78

CB-137658  93

DC-711801  56

HE-489451  65

CF-172009  79

DD-100740  85
