SELECT s.country_name, p.posi_to_play, COUNT(goal_id)
FROM goal_details as g
INNER JOIN player_mast as p
ON g.player_id = p.player_id
INNER JOIN soccer_country AS s
ON s.country_id = g.team_id
GROUP BY s.country_name, p.posi_to_play
ORDER BY s.country_name, p.posi_to_play;