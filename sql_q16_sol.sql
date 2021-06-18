SELECT r.referee_name, v.venue_name, COUNT(match_no) AS no_of_matches
FROM match_mast as m
INNER JOIN referee_mast as r
ON m.referee_id = r.referee_id
INNER JOIN soccer_venue as v
ON m.venue_id = v.venue_id
GROUP BY r.referee_name, v.venue_name
ORDER BY r.referee_name, v.venue_name;