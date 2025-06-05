WITH pct_rnk AS(
SELECT *,
CASE 
WHEN num_votes = 1 THEN 0.25
WHEN num_votes > 1 THEN ROUND(PERCENT_RANK()OVER(ORDER BY num_votes),2)
ELSE 0 END AS vts_pct,

FROM `rock-finder-project.routes.routes_silver`)

SELECT
*,
ROUND((avg_stars *vts_pct),2) AS weighted_score,
FROM pct_rnk
ORDER BY weighted_score desc