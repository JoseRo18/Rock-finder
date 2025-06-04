SELECT *,
CASE 
WHEN rating_num BETWEEN 5.2 AND 5.9 THEN "Beginner"
WHEN rating_num BETWEEN 5.1 AND 5.11 THEN "Intermediate"
WHEN rating_num BETWEEN 5.12 AND 5.13 THEN "Advanced"
WHEN rating_num BETWEEN 5.14 AND 5.15 THEN "Pro"
ELSE "Easy" END AS difficulty_level,
FROM `rock-finder-project.routes.routes_silver`
