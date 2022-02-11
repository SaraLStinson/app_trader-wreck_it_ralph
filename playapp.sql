SELECT *
FROM play_store_apps
WHERE review_count > 50000 
AND rating::numeric >= 4
AND category IN ('EDUCATION', 'GAME', 'FAMILY')
ORDER BY rating DESC;


SELECT COUNT(category)
FROM play_store_apps
ORDER BY category;