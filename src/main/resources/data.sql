INSERT INTO user (firstname, lastname, bio, password, profile_picture, role, username)
VALUES ('hellos', 'world', 'I was born in the dark', '$2a$10$2z77BnQL7IEkX6J8Rk7V8e0VCjDXigJoqWhhFi4HH/LZHOfxlJMAq',
        'https://via.placeholder.com/600/92c952', 'USER', 'hellos'),
       ('John', 'Doe', 'Lorem ipsum dolor sit amet', '$2a$10$2z77BnQL7IEkX6J8Rk7V8e0VCjDXigJoqWhhFi4HH/LZHOfxlJMAq',
        'https://via.placeholder.com/600/92c952', 'USER', 'john'),
       ('Jane', 'Doe', 'Consectetur adipiscing elit', '$2a$10$2z77BnQL7IEkX6J8Rk7V8e0VCjDXigJoqWhhFi4HH/LZHOfxlJMAq',
        'https://via.placeholder.com/600/24f355', 'USER', 'jane'),
       ('Michael', 'Bay', 'Sed do eiusmod tempor incididunt', '$2a$10$2z77BnQL7IEkX6J8Rk7V8e0VCjDXigJoqWhhFi4HH/LZHOfxlJMAq',
        'https://via.placeholder.com/600/56a8c2', 'USER', 'michael');

-- John Doe's new posts
INSERT INTO post (content, created_at, mediaurl, user_id)
VALUES
    ('Had an amazing day exploring new places!', NOW(), 'https://via.placeholder.com/600/92c952', 2),
    ('Made a delicious homemade pizza, it was great!', NOW(), 'https://via.placeholder.com/600/24f355', 2);

-- Jane Doe's new posts
INSERT INTO post (content, created_at, mediaurl, user_id)
VALUES
    ('Just finished a new painting. It feels great!', NOW(), 'https://via.placeholder.com/600/56a8c2', 3),
    ('Feeling grateful today, let\'s spread positivity!', NOW(), 'https://via.placeholder.com/600/92c952', 3);

-- Michael Smith's new posts
INSERT INTO post (content, created_at, mediaurl, user_id)
VALUES
('Had a great workout session this morning!', NOW(), 'https://via.placeholder.com/600/24f355', 4),
     ('Tried a new coffee blend today. Really good!', NOW(), 'https://via.placeholder.com/600/56a8c2', 4);

INSERT INTO post (content, created_at, mediaurl, user_id)
VALUES ('This is my first post!', NOW(), 'https://via.placeholder.com/600/92c952', 1),       -- John Doe's post
       ('Loving the weather today!', NOW(), 'https://via.placeholder.com/600/24f355', 2),    -- Jane Doe's post
       ('Check out this beautiful view!', NOW(), 'https://via.placeholder.com/600/56a8c2', 3)-- Michael Smith's post
    ('Check out this  view!', NOW(), 'https://via.placeholder.com/600/56a8c2', 4); -- Michael Smith's post


INSERT INTO comment (content, created_at, post_id, user_id)
VALUES ('Great post, John!', NOW(), 1, 2),             -- Jane commenting on John's post
       ('Thanks for sharing, Michael!', NOW(), 3, 1),  -- John commenting on Michael's post
       ('Totally agree with you, Jane!', NOW(), 2, 3), -- Michael commenting on Jane's post
       ('Great book! Would love to read it!', NOW(), 1, 2),
       ('Enjoy your vacation!', NOW(), 4, 3),
       ('Sounds like a fun day!', NOW(), 2, 4),
       ('Looks like a relaxing day!', NOW(), 5, 2);

INSERT INTO reaction (type, post_id, user_id)
VALUES ('LIKE', 1, 2), -- Jane liked John's post
       ('LIKE', 2, 3), -- Michael liked Jane's post
       ('LIKE', 3, 1); -- John liked Michael's post

INSERT INTO user_followers (user_id, followers_id)
VALUES (1, 2), -- Jane follows John
       (2, 3), -- Michael follows Jane
       (3, 1),
       (2, 3), -- John follows Michael
       (2, 4),
       (3, 2),
       (4, 2);
