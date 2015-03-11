# Write your MySQL query statement below
SELECT Score, ( SELECT COUNT(DISTINCT(Score))+1 
                FROM Scores s2 
                WHERE s2.Score > s1.Score ) As Rank
FROM Scores s1
ORDER BY Score DESC
