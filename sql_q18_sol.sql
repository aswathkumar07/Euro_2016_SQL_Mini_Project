SELECT match_no, COUNT(*) AS no_of_bookings
FROM player_booked
GROUP BY match_no
ORDER BY no_of_bookings DESC
LIMIT 1;