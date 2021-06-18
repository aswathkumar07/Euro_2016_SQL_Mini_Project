SELECT s.country_name, p.player_name
FROM goal_details as g
INNER JOIN player_mast as p
ON g.player_id = p.player_id
INNER JOIN soccer_country AS s
ON s.country_id = g.team_id
WHERE p.posi_to_play = 'DF';