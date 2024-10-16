-- SQL  script that ranks country by
-- origins of bands
SELECT origin, SUM(nb_fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY SUM(nb_fans) DESC;
