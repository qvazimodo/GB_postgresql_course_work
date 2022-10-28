-- Таблица пользователей
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  phone VARCHAR(15) UNIQUE
);
-- таблица профиля пользователя
CREATE TABLE users_profile (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  birthday TIMESTAMP,	
  user_about TEXT,
  education TEXT,
  career TEXT,
  main_photo_id INT,
  last_visit TIMESTAMP,
  created_at TIMESTAMP
);

-- таблица анкеты пользователя
CREATE TABLE users_form (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  children_id INT,	
  residence_id INT,
  daily_regime_id INT,
  smoking_id INT,
  alcohol_id INT,
  languges TEXT
);

-- таблица типов children_id
CREATE TABLE children_types (
  id SERIAL PRIMARY KEY,
  type VARCHAR(120) NOT NULL UNIQUE
);

-- таблица типов residence_id
CREATE TABLE residence_types (
  id SERIAL PRIMARY KEY,
  type VARCHAR(120) NOT NULL UNIQUE
);

-- таблица типов daily_regime_id
CREATE TABLE daily_regime_types (
  id SERIAL PRIMARY KEY,
  type VARCHAR(120) NOT NULL UNIQUE
);

-- таблица типов smoking_id
CREATE TABLE smoking_types (
  id SERIAL PRIMARY KEY,
  type VARCHAR(120) NOT NULL UNIQUE
);

-- таблица типов alcohol_id
CREATE TABLE alcohol_types (
  id SERIAL PRIMARY KEY,
  type VARCHAR(120) NOT NULL UNIQUE
);

-- таблица интересов
CREATE TABLE users_interests (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  music TEXT,	
  sinema TEXT,
  tv TEXT,
  idols TEXT
);

-- Таблица дружбы
CREATE TABLE friendship (
  id SERIAL PRIMARY KEY,
  requested_by_user_id INT NOT NULL,
  requested_to_user_id INT NOT NULL,
  status_id INT NOT NULL,
  requested_at TIMESTAMP,
  confirmed_at TIMESTAMP
);

-- Таблица статусов дружбы
CREATE TABLE friendship_statuses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) UNIQUE
);

-- Таблица сообществ
CREATE TABLE communities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(120) UNIQUE,
  creator_id INT NOT NULL,
  created_at TIMESTAMP
);

-- Таблица связи сообщества - пользователи
CREATE TABLE communities_users (
  community_id INT NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP,
  PRIMARY KEY (community_id, user_id)
);

-- Таблица фотографий
CREATE TABLE photo (
  id SERIAL PRIMARY KEY,
  url VARCHAR(250) NOT NULL UNIQUE,
  owner_id INT NOT NULL,
  description VARCHAR(250) NOT NULL,
  uploaded_at TIMESTAMP NOT NULL,
  size INT NOT NULL
);

-- Таблица видео
CREATE TABLE video (
  id SERIAL PRIMARY KEY,
  url VARCHAR(250) NOT NULL UNIQUE,
  owner_id INT NOT NULL,
  description VARCHAR(250) NOT NULL,
  uploaded_at TIMESTAMP NOT NULL,
  size INT NOT NULL
);

-- Таблица музыка
CREATE TABLE music (
  id SERIAL PRIMARY KEY,
  url VARCHAR(250) NOT NULL UNIQUE,
  owner_id INT NOT NULL,
  description VARCHAR(250) NOT NULL,
  uploaded_at TIMESTAMP NOT NULL,
  size INT NOT NULL
);
-- таблица подписок
CREATE TABLE subscription(
	id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	subcription_type_id INT NOT NULL,
	where_signed_id INT NOT NULL,
	when_signed TIMESTAMP NOT NULL
);
-- таблица типов подписок
CREATE TABLE subscription_type(
	id SERIAL PRIMARY KEY,
	type VARCHAR(30) UNIQUE
);

