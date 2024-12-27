# [
# "https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
# "https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
# "https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
# "https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
# "https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D",
# "https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D"
# ]


INSERT INTO user (bio, firstname, lastname, password, profile_picture, role, username)
VALUES
    ('A tech enthusiast and avid traveler. Always exploring new ideas.', 'Alice', 'Johnson', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'alicej'),
    ('Lover of art, food, and great conversations. Always trying to grow.', 'Bob', 'Smith', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'bobsmith'),
    ('Coffee addict and bookworm. Exploring the world one page at a time.', 'Charlie', 'Brown', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'charliebrown'),
    ('Outdoor lover, photographer, and creative soul. Capturing moments one click at a time.', 'David', 'Miller', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'davidm'),
    ('Just a person trying to make the most of life. Passionate about technology and movies.', 'Emma', 'Davis', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 'USER', 'emmad'),
    ('Guitar enthusiast, fitness junkie, and all-around curious soul.', 'Frank', 'Taylor', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 'USER', 'franktaylor'),
    ('A storyteller at heart. Creating new narratives every day.', 'Grace', 'Wilson', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'gracew'),
    ('Proud parent and foodie. Exploring new recipes and family adventures.', 'Hannah', 'Martinez', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'hannahm'),
    ('Tech lover, space enthusiast, and passionate about solving problems.', 'Ivy', 'Robinson', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'ivyr'),
    ('A curious mind with a love for design, art, and music.', 'Jack', 'Lee', '$2a$10$IXS4W52Sn08bi4QIV8284.CePGYOvIVcoG2HGj1izsWb7VV36WSue', 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'USER', 'jackl');

-- Insert posts for each user (6 posts per user)
INSERT INTO post (content, created_at, mediaurl, user_id)
VALUES
-- Posts by Alice
('Excited to share my latest travel adventures!', NOW(), 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
('Trying new tech gadgets today. So far, I love it!', NOW(), 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
('The art of mindfulness – here’s my take on it.', NOW(), 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
-- Posts by Bob
('Just finished a new painting. Check it out!', NOW(), 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 3),
('Who else loves experimenting with new recipes?', NOW(), 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 3),
('The best moments are those spent with friends. Here’s a snapshot!', NOW(), 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 3),
('Exploring the wonders of nature today. Here’s a glimpse of my day!', NOW(), 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
('Sharing my thoughts on sustainability and the future of our planet.', NOW(), 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
('What’s your favorite book of all time? I’m currently reading this amazing novel.', NOW(), 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
-- Posts by Bob (continued)
('Just spent the weekend cooking a new recipe. It turned out great!', NOW(), 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 3),
('Celebrating the little things in life with a homemade dessert. Who else loves to bake?', NOW(), 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 3),
('Chasing sunsets, one at a time. 🌅', NOW(), 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 3),
-- Posts by Charlie
('Exploring the meaning of true creativity. Join me in this thought experiment.', NOW(), 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 4),
('Building something new and exciting today! Stay tuned for updates!', NOW(), 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 4),
('Embracing the joy of making mistakes and learning from them. Anyone else feel this way?', NOW(), 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 4),
-- Posts by David
('A new challenge today: going offline for 24 hours. Will you join me?', NOW(), 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 5),
('Made some amazing new friends on my hike today. Life is good!', NOW(), 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 5),
('Reflecting on the power of small moments that make life so special.', NOW(), 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 5),
-- Posts by Emma
('Here’s my review of the latest movie I watched. It was amazing!', NOW(), 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 6),
('Tried a new workout routine today and feeling great! Anyone else into fitness?', NOW(), 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 6),
('Learning to appreciate the beauty of simplicity. Sometimes less is more.', NOW(), 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 6),
-- Posts by Frank
('Building a new guitar today. Can’t wait to share the process!', NOW(), 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 7),
('Sundays are for jam sessions. Anyone else playing music today?', NOW(), 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 7),
('Yoga in the morning, music in the evening. What’s your perfect day like?', NOW(), 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 7),
-- Posts by Grace
('Caught up in a new book today. What are you reading right now?', NOW(), 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 8),
('Learning new techniques in photography. What’s your secret for a great shot?', NOW(), 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 8),
('Can’t believe how much change is happening in the world right now. Thoughts?', NOW(), 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 8),
-- Posts by Hannah
('Making memories with my family. So grateful for these moments.', NOW(), 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9),
('Can’t wait to bake with my kids this weekend. What’s your favorite recipe?', NOW(), 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 9),
('I’ve started a new garden project. Any gardening tips for me?', NOW(), 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 9),
-- Posts by Ivy
('Just got a new tech gadget. Can’t wait to test it out!', NOW(), 'https://images.unsplash.com/photo-1587691592099-24045742c181?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 10),
('Space exploration is so fascinating. Anyone else into this topic?', NOW(), 'https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 10),
('Just solved a tricky coding problem. Feels great to be a problem-solver!', NOW(), 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 10),
-- Posts by Jack
('Finally finished designing my new project. So proud of how it turned out!', NOW(), 'https://images.unsplash.com/photo-1591154669695-5f2a8d20c089?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 11),
('Been experimenting with new art techniques lately. Can’t wait to share the results!', NOW(), 'https://plus.unsplash.com/premium_photo-1661658474081-b3993bd5a302?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 11),
('Anyone else inspired by the power of nature? The beauty is unreal.', NOW(), 'https://plus.unsplash.com/premium_photo-1678112179641-7e7528891033?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVybHxlbnwwfHwwfHx8MA%3D%3D', 11);
-- Repeat for other users

INSERT INTO comment (content, created_at, post_id, user_id)
VALUES
-- Comments on Alice's first post
('That sounds amazing! Can’t wait to hear more about your adventures.', NOW(), 1, 3),
('Wishing I could travel like that! Keep sharing your stories.', NOW(), 1, 4),
('You are inspiring me to travel more! Keep up the great work!', NOW(), 1, 5),
-- Comments on Bob's first post
('Love the painting! What’s your inspiration?', NOW(), 2, 6),
('You’ve really captured the essence of the scene. Beautiful!', NOW(), 2, 7),
('This is amazing! Would love to learn more about your process.', NOW(), 2, 8);

INSERT INTO comment (content, created_at, post_id, user_id)
VALUES
    ('This looks amazing! Where is this?', NOW(), 1, 3),
    ('Love the scenery! Nature is so beautiful.', NOW(), 1, 4),
    ('I would love to visit this place someday. Thanks for sharing!', NOW(), 1, 5);

-- Post 2: "Sharing my thoughts on sustainability and the future of our planet."
INSERT INTO comment (content, created_at, post_id, user_id)
VALUES
    ('Such an important topic! We all need to do our part.', NOW(), 2, 6),
    ('I agree with you! We have to start making better choices.', NOW(), 2, 7),
    ('Great post! Everyone should be more aware of these issues.', NOW(), 2, 8);

-- Post 3: "What’s your favorite book of all time? I’m currently reading this amazing novel."
INSERT INTO comment (content, created_at, post_id, user_id)
VALUES
    ('I love that book! It’s one of my favorites too.', NOW(), 3, 9),
    ('Currently reading the same book! It’s so captivating.', NOW(), 3, 10),
    ('What’s the book about? I need something new to read.', NOW(), 3, 11);

-- Comments for Bob's posts
-- Post 1: "Just spent the weekend cooking a new recipe. It turned out great!"
INSERT INTO comment (content, created_at, post_id, user_id)
VALUES
    ('Looks delicious! What did you cook?', NOW(), 4, 2),
    ('I love cooking too! Care to share the recipe?', NOW(), 4, 5),
    ('That dish looks so good! Definitely going to try this myself.', NOW(), 4, 6);

-- Post 2: "Celebrating the little things in life with a homemade dessert."
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Your desserts always look amazing! Can I get the recipe?', NOW(), 5, 7),
('Dessert is always a good reason to celebrate! What kind of dessert was it?', NOW(), 5, 8),
('Yum! I wish I could bake like you.', NOW(), 5, 9);

-- Post 3: "Chasing sunsets, one at a time. 🌅"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Beautiful sunset! Where did you take this photo?', NOW(), 6, 10),
('Love the colors in the sky! This is stunning.', NOW(), 6, 11),
('Sunsets like these remind me of the good things in life.', NOW(), 6, 2);

-- Comments for Charlie's posts
-- Post 1: "Exploring the meaning of true creativity. Join me in this thought experiment."
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('This is a really interesting topic! I believe creativity is all about thinking differently.', NOW(), 7, 3),
('I love exploring creativity! What’s your take on it?', NOW(), 7, 4),
('Great discussion! I think true creativity comes from embracing failure.', NOW(), 7, 5);

-- Post 2: "Building something new and exciting today! Stay tuned for updates!"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Can’t wait to see what you’re building! Keep us posted!', NOW(), 8, 6),
('This sounds exciting! What’s the project about?', NOW(), 8, 7),
('Looking forward to seeing your creation!', NOW(), 8, 8);

-- Post 3: "Embracing the joy of making mistakes and learning from them."
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('That’s a great mindset! Mistakes are a part of growth.', NOW(), 9, 9),
('I totally agree! We learn the most from our failures.', NOW(), 9, 10),
('True! I’ve made so many mistakes and learned so much.', NOW(), 9, 11);

-- Comments for David's posts
-- Post 1: "A new challenge today: going offline for 24 hours. Will you join me?"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('I might just try this myself! It’s a great idea.', NOW(), 10, 2),
('I think we all need a digital detox from time to time.', NOW(), 10, 3),
('I’m in! Let’s do it together!', NOW(), 10, 4);

-- Post 2: "Made some amazing new friends on my hike today. Life is good!"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('That’s awesome! Hiking is a great way to meet new people.', NOW(), 11, 5),
('Hiking is such a great way to connect with nature and others.', NOW(), 11, 6),
('Glad you’re having such a positive experience!', NOW(), 11, 7);

-- Post 3: "Reflecting on the power of small moments that make life so special."
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Such a beautiful post. It’s the little things that make life special.', NOW(), 12, 8),
('I love this! Life is all about those small, meaningful moments.', NOW(), 12, 9),
('It’s so easy to overlook the small moments. Thanks for the reminder!', NOW(), 12, 10);

-- Comments for Emma's posts
-- Post 1: "Here’s my review of the latest movie I watched. It was amazing!"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('What movie was it? I need something to watch!', NOW(), 13, 2),
('I love watching movies too! I’ll check it out.', NOW(), 13, 3),
('Thanks for the recommendation! I’m adding this to my list.', NOW(), 13, 4);

-- Post 2: "Tried a new workout routine today and feeling great! Anyone else into fitness?"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Fitness is key to a healthy life! What kind of workout did you do?', NOW(), 14, 5),
('I just started working out too! I need some tips.', NOW(), 14, 6),
('It’s so rewarding to feel strong and healthy! Keep going!', NOW(), 14, 7);

-- Post 3: "Learning to appreciate the beauty of simplicity. Sometimes less is more."
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('I completely agree! Simplifying your life can be so freeing.', NOW(), 15, 8),
('Simplicity is beautiful. I try to practice it every day.', NOW(), 15, 9),
('It’s amazing how much peace comes from simplicity.', NOW(), 15, 10);

-- Comments for Frank's posts
-- Post 1: "Building a new guitar today. Can’t wait to share the process!"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('That sounds like a fun project! What kind of guitar are you building?', NOW(), 16, 11),
('Can’t wait to see how it turns out! Guitar-making is such an art.', NOW(), 16, 2),
('Building a guitar? That’s awesome! How long does it take?', NOW(), 16, 3);

-- Post 2: "Sundays are for jam sessions. Anyone else playing music today?"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Jam sessions are the best! What instrument do you play?', NOW(), 17, 4),
('I’m always up for a jam session. Count me in next time!', NOW(), 17, 5),
('Music is the soul’s language. Enjoy your session!', NOW(), 17, 6);

-- Post 3: "Yoga in the morning, music in the evening. What’s your perfect day like?"
INSERT INTO comment (content, created_at, post_id, user_id)
    VALUES
        ('Yoga in the morning sounds amazing! I need to try that.', NOW(), 18, 7),
('I love how you balance yoga and music. My perfect day would be the same!', NOW(), 18, 8),
('Perfect day for me too! So peaceful and productive.', NOW(), 18, 9);


-- User Follows
-- User 2 follows users 3, 4, 5
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (2, 3),
                                                       (2, 4),
                                                       (2, 5);

-- User 3 follows users 4, 5, 6
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (3, 4),
                                                       (3, 5),
                                                       (3, 6);

-- User 4 follows users 5, 6, 7
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (4, 5),
                                                       (4, 6),
                                                       (4, 7);

-- User 5 follows users 6, 7, 8
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (5, 6),
                                                       (5, 7),
                                                       (5, 8);

-- User 6 follows users 7, 8, 9
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (6, 7),
                                                       (6, 8),
                                                       (6, 9);

-- User 7 follows users 8, 9, 10
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (7, 8),
                                                       (7, 9),
                                                       (7, 10);

-- User 8 follows users 9, 10, 11
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (8, 9),
                                                       (8, 10),
                                                       (8, 11);

-- User 9 follows users 10, 11, 12
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (9, 10),
                                                       (9, 11),
                                                       (9, 12);

-- User 10 follows users 11, 12, 13
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (10, 11),
                                                       (10, 12),
                                                       (10, 13);

-- User 11 follows users 12, 13, 14
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (11, 12),
                                                       (11, 13),
                                                       (11, 14);

-- User 12 follows users 13, 14, 15
INSERT INTO user_followers (user_id, followers_id) VALUES
                                                       (12, 13),
                                                       (12, 14),
                                                       (12, 15);

-- Insert dummy data into the reactions table
INSERT INTO reaction (type, post_id, user_id) VALUES
                                                  ('LIKE', 1, 2),
                                                  ('LIKE', 2, 3),
                                                  ('LIKE', 3, 4),
                                                  ('LIKE', 4, 5),
                                                  ('LIKE', 5, 6),
                                                  ('LIKE', 6, 7),
                                                  ('LIKE', 7, 8),
                                                  ('LIKE', 8, 9),
                                                  ('LIKE', 9, 10),
                                                  ('LIKE', 10, 2),
                                                  ('LIKE', 11, 3),
                                                  ('LIKE', 12, 4),
                                                  ('LIKE', 13, 5),
                                                  ('LIKE', 14, 6),
                                                  ('LIKE', 15, 7),
                                                  ('LIKE', 16, 8),
                                                  ('LIKE', 17, 9),
                                                  ('LIKE', 18, 10),
                                                  ('LIKE', 19, 2),
                                                  ('LIKE', 20, 3),
                                                  ('LIKE', 21, 4),
                                                  ('LIKE', 22, 5),
                                                  ('LIKE', 23, 6),
                                                  ('LIKE', 24, 7),
                                                  ('LIKE', 25, 8),
                                                  ('LIKE', 26, 9),
                                                  ('LIKE', 27, 10),
                                                  ('LIKE', 28, 2),
                                                  ('LIKE', 29, 3),
                                                  ('LIKE', 30, 4),
                                                  ('LIKE', 31, 5),
                                                  ('LIKE', 32, 6),
                                                  ('LIKE', 33, 7),
                                                  ('LIKE', 34, 8),
                                                  ('LIKE', 35, 9),
                                                  ('LIKE', 36, 10);

insert  into  reaction(type, post_id, user_id)
    Value ('LIKE', 3, 3);
