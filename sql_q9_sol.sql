SELECT p.player_name AS name, p.jersey_no as jersey_no
FROM match_details as m
INNER JOIN player_mast as p
ON m.player_gk = p.player_id
INNER JOIN soccer_country
ON soccer_country.country_id = p.team_id
WHERE soccer_country.country_name = 'Germany' AND m.play_stage = 'G';