SELECT v.venue_name, p.match_no 
FROM (SELECT DISTINCT(match_no) FROM penalty_shootout) as p
INNER JOIN match_mast as m ON p.match_no = m.match_no
INNER JOIN soccer_venue as v ON m.venue_id = v.venue_id;
