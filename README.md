# NWEA-Fall-SQL-Analyasis

## Overview
This project analyses Fall NWEA Math scores using SQL in MYSQL Workbench. The goal was to explore how scores differ by class and to identify students who are on level, below level, high achievers and can do students.

## Dataset
The Dataset is a simulated version of NWEA scores with the following columns:
- student_id
- student block
- rit_score
- percentile
- goal_area

#Key Questions
- How do rit_score differ by class?
- Which class have the largest number of students between the 61st and 80th percentile?
- Which class have the largest number of students below the 40th percentile?
- Which class has the largest number of students above the 80th percentile?


## Eample Queries
''' SQL
-- At risk students (below 40th Perncetnile)
SELECT DISTINCT student_block, COUNT(DISTINCT student_id) AS below_proficient
FROM nwea_scores
WHERE percentile BETWEEN 1 AND 40
GROUP BY student_block;

-- AVG RIT by class
SELECT DISTINCT student_block, AVG(rit_score) AS avg_rit
FROM nwea_scores
GROUP BY student_block
ORDER BY avg_rit DESC;


## Results
