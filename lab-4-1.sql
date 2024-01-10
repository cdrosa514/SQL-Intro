-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

--SELECT players.id, players.first_name, players.last_name, hits
--FROM stats INNER JOIN  on players.id = stats.id
--WHERE players.id = 1678
--GROUP BY year;

SELECT SUM(stats.hits)
FROM stats
INNER JOIN players on stats.player_id = players.id
WHERE first_name = "Barry"
AND last_name = "Bonds"