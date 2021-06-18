SELECT COUNT(DISTINCT p.player_name) AS GK_Captain_Count
FROM match_captain as mc
INNER JOIN player_mast as p
ON mc.player_captain = p.player_id
WHERE p.posi_to_play = "GK";