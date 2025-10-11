# NWEA-Fall-SQL-Analysis

## Overview
This project analyses Fall NWEA Math scores using SQL in MYSQL Workbench. The goal was to explore how scores differ by class and to identify students who are on level, below level, high achievers and can do students.

## Dataset
The Dataset is a simulated version of NWEA scores with the following columns:
- student_id
- student block
- rit_score
- percentile
- goal_area

## Key Questions
- How do rit_score differ by class?
- Which class have the largest number of students between the 61st and 80th percentile?
- Which class have the largest number of students below the 40th percentile?
- Which class has the largest number of students above the 80th percentile?


## Example Queries
''' sql
-- At-risk students (below 40th percentile)
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
1. The avg_rit for each block:
-  B1 is 207
- B2 is 211
- B3 is 209.
  
2. The avg_Percentile for each block:
   - B1 is 45.8%
   - B2 is 52.7 %
   - B3 is 49.5 %
  
3. Block 1 had the most students below proficiency compared to the other blocks
4. Block 2 had the highest high achievers
5. Block 2 also has the most students performing on-level

