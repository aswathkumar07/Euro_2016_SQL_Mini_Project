SELECT r.referee_name, COUNT(DISTINCT player_id) AS unique_player_bookings
FROM match_mast as m
INNER JOIN referee_mast as r
ON m.referee_id = r.referee_id
INNER JOIN player_booked as pb
ON m.match_no = pb.match_no
GROUP BY r.referee_name
ORDER BY unique_player_bookings DESC;