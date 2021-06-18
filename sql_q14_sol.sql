SELECT r.referee_name, COUNT(pb.match_no) AS no_of_bookings
FROM match_mast as m
INNER JOIN referee_mast as r
ON m.referee_id = r.referee_id
INNER JOIN player_booked as pb
ON m.match_no = pb.match_no
GROUP BY r.referee_name
ORDER BY no_of_bookings DESC;