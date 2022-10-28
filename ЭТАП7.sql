--- ПРЕДСТАВЛЕНИЕ: вывести информацию по пользователям с 10 самыми большими видеофайлами: имя, фамилия, URL-видео, id-видео, размер 
CREATE OR REPLACE VIEW ladgers_videos AS
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
	
SELECT * FROM ladgers_videos;

--- ПРЕДСТАВЛЕНИЕ: вывести информацию по пользователям с 10 самыми маленькими по размеру фотографиями: имя, фамилия, URL-видео, id-видео, размер 

CREATE OR REPLACE VIEW less_photos AS
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
	
SELECT * FROM less_photos;