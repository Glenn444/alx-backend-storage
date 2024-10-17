-- Use the appropriate database
USE your_database_name;

-- Calculate lifespan and filter by Glam rock
SELECT 
    band_name, 
    CASE 
        WHEN split IS NULL THEN 2022 - formed 
        ELSE split - formed 
    END AS lifespan
FROM 
    bands
WHERE 
    main_style = 'Glam rock'
ORDER BY 
    lifespan DESC;
