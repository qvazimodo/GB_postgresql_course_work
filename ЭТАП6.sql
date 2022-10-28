--- вывести информацию по пользователям с 10 самыми большими видеофайлами: имя, фамилия, URL-видео, id-видео, размер 
SELECT
	video.id AS id,
	url,
	first_name,
	last_name,
	size
	FROM video
		JOIN users 
				ON users.id = video.owner_id
	ORDER BY size DESC LIMIT 10;

--- вывести информацию по пользователям с 10 самыми маленькими по размеру фотографиями: имя, фамилия, URL-видео, id-видео, размер 

SELECT
	photo.id AS id,
	url,
	first_name,
	last_name,
	size
	FROM photo
		JOIN users 
				ON users.id = photo.owner_id
	ORDER BY size ASC LIMIT 10;