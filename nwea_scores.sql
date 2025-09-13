SELECT * FROM nwea_data.nwea_scores;

-- AVG RIT by clas
SELECT student_block, AVG(rit_score) AS avg_rit
FROM nwea_scores 
GROUP BY student_block
ORDER BY avg_rit DESC;

-- AVG Percentile by Class
SELECT student_block, AVG(percentile) AS avg_percentile
FROM nwea_scores
GROUP BY student_block
ORDER BY avg_percentile DESC;

-- At risk students (below 40th Perncetnile)
SELECT student_block, COUNT(DISTINCT student_id) AS below_proficient
FROM nwea_scores
WHERE percentile BETWEEN 1 AND 40
GROUP BY student_block;

-- High Achievers
SELECT DISTINCT student_block, COUNT(DISTINCT student_id) AS high_achievers
FROM nwea_scores
WHERE percentile >= 81
GROUP BY student_block;

-- On Grade Level
SELECT student_block, COUNT(DISTINCT student_id) AS on_level
FROM nwea_scores
WHERE percentile BETWEEN 61 and 80
GROUP BY student_block;

-- Bubble Kids (Can Do)
SELECT student_block, COUNT(DISTINCT student_id) AS bubble
FROM nwea_scores
WHERE percentile BETWEEN 41 AND 60
GROUP BY student_block;