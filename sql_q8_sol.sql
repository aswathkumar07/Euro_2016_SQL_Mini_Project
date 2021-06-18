SELECT match_details.match_no, match_details.team_id, soccer_country.country_name
FROM match_details
RIGHT JOIN
    (SELECT match_no, COUNT(match_no) AS penalty_count
	FROM penalty_shootout
	GROUP BY match_no
    ORDER BY match_no DESC
    LIMIT 1) AS subquery
ON match_details.match_no = subquery.match_no
INNER JOIN soccer_country ON match_details.team_id = soccer_country.country_id;