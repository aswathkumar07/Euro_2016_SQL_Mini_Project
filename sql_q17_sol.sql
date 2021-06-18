SELECT c.country_name, COUNT(ass_ref_id) AS asst_ref_count
FROM asst_referee_mast AS ar
INNER JOIN soccer_country AS c
ON ar.country_id = c.country_id
GROUP BY c.country_name
ORDER BY asst_ref_count DESC;