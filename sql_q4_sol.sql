SELECT play_schedule, play_half, COUNT(*)
FROM player_in_out
WHERE in_out = 'I'
GROUP BY play_schedule, play_half
ORDER BY play_schedule;
