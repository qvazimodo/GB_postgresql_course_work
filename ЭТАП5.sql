--- вывести информацию по пользователям с 10 самыми большими видеофайлами: имя, фамилия, URL-видео, id-видео, размер 
SELECT
	id,
	url,
	(SELECT first_name FROM users WHERE users.id = video.owner_id) AS first_name,
	(SELECT last_name FROM users WHERE users.id = video.owner_id) AS last_name,
	size
	FROM video
	ORDER BY size DESC LIMIT 10;

--- вывести информацию по пользователям с 10 самыми маленькими по размеру фотографиями: имя, фамилия, URL-видео, id-видео, размер 

SELECT
	id,
	url,
	(SELECT first_name FROM users WHERE users.id = photo.owner_id) AS first_name,
	(SELECT last_name FROM users WHERE users.id = photo.owner_id) AS last_name,
	size
	FROM photo
	ORDER BY size ASC LIMIT 10;