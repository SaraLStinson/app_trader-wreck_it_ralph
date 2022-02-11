SELECT 
	DISTINCT name, 
	currency, 
	app.price AS app_price, 
	play.price::money AS play_price,
	app.review_count::numeric AS apple_review_count, 
	play.review_count::numeric AS play_review_count, 
	app.rating AS app_rating,
	play.rating AS play_rating,
	play.install_count AS play_install_count,
	app.primary_genre AS app_genre,
	play.genres AS play_genre,
	play.category AS play_category,
	app.content_rating AS app_content_rating,
	play.content_rating AS play_content_rating
FROM play_store_apps AS play
	INNER JOIN app_store_apps AS app USING (name)
ORDER BY play.rating DESC;
