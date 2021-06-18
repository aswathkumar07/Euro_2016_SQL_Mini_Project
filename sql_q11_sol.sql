SELECT p.player_name, c.country_name, p.jersey_no, p.playing_club
FROM player_mast AS p
INNER JOIN soccer_country as c
ON p.team_id = c.country_id
WHERE c.country_name = "England" AND p.posi_to_play = "GK"