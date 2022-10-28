---  ПОЛЬЗОВАТЕЛЬСКАЯ ФУНКЦИЯ: вывести размер фото по пользователю с id
CREATE FUNCTION size_photos(user_id INTEGER)
RETURNS INT AS
$$
SELECT size
FROM photo
WHERE owner_id = user_id;
$$
LANGUAGE SQL;

SELECT size_photos(30);