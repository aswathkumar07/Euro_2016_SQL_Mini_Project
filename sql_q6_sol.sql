SELECT COUNT(CASE WHEN LEFT(goal_score, LOCATE('-',goal_score)-1) - RIGHT(goal_score, LENGTH(goal_score) - LOCATE('-', goal_score)) = 1 THEN match_no END) AS narrow_wins 
FROM match_mast
WHERE decided_by = 'N';
