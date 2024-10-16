-- SQL script that lists all brands
-- with Glam rock as their main style
SELECT band_name, 
       IF (split IS NOT NULL, 
           2022 - CAST(split AS UNSIGNED), 
           2022 - CAST(formed AS UNSIGNED)) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
