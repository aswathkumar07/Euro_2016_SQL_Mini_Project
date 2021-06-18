SELECT DISTINCT p.player_name, sub.match_no 
FROM player_in_out AS sub
INNER JOIN player_mast AS p
ON sub.player_id = p.player_id
WHERE sub.play_schedule = "NT" AND sub.play_half = 1 AND sub.in_out = "I";