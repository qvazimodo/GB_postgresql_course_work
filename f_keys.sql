ALTER TABLE users_profile
ADD CONSTRAINT users_profile_main_photo_id_fk
FOREIGN KEY (main_photo_id)
REFERENCES photo (id);

ALTER TABLE users_profile
ADD CONSTRAINT users_profile_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id);



ALTER TABLE users_form
ADD CONSTRAINT users_form_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id);

ALTER TABLE users_form
ADD CONSTRAINT users_form_children_id_fk
FOREIGN KEY (children_id)
REFERENCES children_types (id);

ALTER TABLE users_form
ADD CONSTRAINT users_form_residence_id_fk
FOREIGN KEY (residence_id)
REFERENCES residence_types (id);

ALTER TABLE users_form
ADD CONSTRAINT users_form_daily_regime_id_fk
FOREIGN KEY (daily_regime_id)
REFERENCES daily_regime_types (id);

ALTER TABLE users_form
ADD CONSTRAINT users_form_smoking_id_fk
FOREIGN KEY (smoking_id)
REFERENCES smoking_types (id);

ALTER TABLE users_form
ADD CONSTRAINT users_form_alcohol_id_fk
FOREIGN KEY (alcohol_id)
REFERENCES alcohol_types (id);

ALTER TABLE users_interests
ADD CONSTRAINT users_interests_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id);


ALTER TABLE communities
ADD CONSTRAINT communities_creator_id_fk
FOREIGN KEY (creator_id)
REFERENCES users (id);

ALTER TABLE communities_users
ADD CONSTRAINT communities_users_community_id_fk
FOREIGN KEY (community_id)
REFERENCES communities (id);

ALTER TABLE communities_users
ADD CONSTRAINT communities_users_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id);

ALTER TABLE friendship
ADD CONSTRAINT friendship_requested_by_user_id_fk
FOREIGN KEY (requested_by_user_id)
REFERENCES users (id);

ALTER TABLE friendship
ADD CONSTRAINT friendship_requested_to_user_id_fk
FOREIGN KEY (requested_to_user_id)
REFERENCES users (id);

ALTER TABLE friendship
ADD CONSTRAINT friendship_status_id_fk
FOREIGN KEY (status_id)
REFERENCES friendship_statuses (id);





ALTER TABLE photo
ADD CONSTRAINT photo_owner_id_fk
FOREIGN KEY (owner_id)
REFERENCES users (id);

ALTER TABLE video
ADD CONSTRAINT video_owner_id_fk
FOREIGN KEY (owner_id)
REFERENCES users (id);

ALTER TABLE music
ADD CONSTRAINT video_owner_id_fk
FOREIGN KEY (owner_id)
REFERENCES users (id);



ALTER TABLE subscription
ADD CONSTRAINT subscription_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id);

ALTER TABLE subscription
ADD CONSTRAINT subscription_subcription_type_id_fk
FOREIGN KEY (subcription_type_id)
REFERENCES subscription_type (id);

ALTER TABLE subscription
ADD CONSTRAINT subscription_where_signed_id_users_fk
FOREIGN KEY (where_signed_id)
REFERENCES users (id);

ALTER TABLE subscription
ADD CONSTRAINT subscription_where_signed_id_communities_fk
FOREIGN KEY (where_signed_id)
REFERENCES communities (id);