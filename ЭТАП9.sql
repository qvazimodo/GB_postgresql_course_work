---  ТРИГГЕР: контроль размера фото по пользователю с id
CREATE OR REPLACE FUNCTION update_photo_size_photo_trigger()
RETURNS TRIGGER AS
$$
DECLARE real_size INTEGER;
BEGIN
	 real_size := (SELECT NEW.size FROM photo WHERE owner_id = NEW.owner_id);
	 IF real_size > 1000 THEN
	  		RAISE EXCEPTION 'ВНИМАНИЕ! У пользователя с ID: % фото с size: % НАРУШЕНИЕ, размер фото не должен превышать 1000', NEW.owner_id, NEW.size;

	 END IF;
	 RETURN NEW;
	 
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_photo_on_update BEFORE UPDATE ON photo
	FOR EACH ROW
EXECUTE FUNCTION update_photo_size_photo_trigger();

SELECT * FROM photo WHERE owner_id = 26;

UPDATE photo SET size = 10000 WHERE owner_id = 26;