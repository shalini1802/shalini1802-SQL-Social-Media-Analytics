CREATE DATABASE social_media;

use social_media;

-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    date_joined DATE
);

-- Create Posts table
CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    content TEXT,
    post_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Comments table
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    comment_text TEXT,
    comment_date DATE,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Likes table
CREATE TABLE Likes (
    like_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    like_date DATE,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Followers table
CREATE TABLE Followers (
    follower_id INT PRIMARY KEY,
    follower_user_id INT,
    following_user_id INT,
    follow_date DATE,
    FOREIGN KEY (follower_user_id) REFERENCES Users(user_id),
    FOREIGN KEY (following_user_id) REFERENCES Users(user_id)
);

-- Instert data in Users table.
INSERT INTO Users (user_id, username, email, date_joined)
VALUES
    (1, 'rahul62', 'rahul@gmail.com', '2023-01-01'),
    (2, 'sanju26', 'sanju@gmail.com', '2023-02-15'),
    (3, 'reebha59', 'reebha@gmail.com', '2023-03-20'),
    (4, 'suman43', 'suman@gmail.com', '2023-04-10'),
    (5, 'shubham23', 'shubham@gmail.com', '2023-05-05'),
    (6, 'silpi1997', 'silpi@gmail.com', '2023-06-12'),
    (7, 'vidushi09', 'vidushi@gmail.com', '2023-07-18'),
    (8, 'manisha45', 'manisha@gmail.com', '2023-08-23'),
    (9, 'chahak56', 'chahak@gmail.com', '2023-09-30'),
    (10, 'preeti78', 'preeti@gmail.com', '2023-10-05'),
    (11, 'kriti90', 'kriti@gmail.com', '2023-11-11'),
    (12, 'aurav45', 'aurav@gmail.com', '2023-12-14'),
    (13, 'kaushal23', 'kaushal@gmail.com', '2024-01-20'),
    (14, 'gunjan45', 'gunjan@gmail.com', '2024-02-25'),
    (15, 'saurav56', 'saurav@gmail.com', '2024-03-30'),
    (16, 'sima12', 'sima@gmail.com', '2024-04-05'),
    (17, 'mamta87', 'mamta@gmail.com', '2024-05-10'),
    (18, 'ritu12', 'ritu@gmail.com', '2024-06-15'),
    (19, 'kriti23', 'kriti@gmail.com', '2024-07-20'),
    (20, 'rahul45', 'rahul@gmail.com', '2024-08-25');

-- Instert data in post table.
INSERT INTO Posts (post_id, user_id, content, post_date)
VALUES
    (1, 1, 'Excited to join this social network!', '2023-01-02'),
    (2, 2, 'Just posted my first photo!', '2023-02-16'),
    (3, 3, 'Feeling inspired today.', '2023-03-21'),
    (4, 4, 'Happy Friday everyone!', '2023-04-11'),
    (5, 5, 'Enjoying the weekend vibes.', '2023-05-06'),
    (6, 1, 'Loving the weather today!', '2023-06-15'),
    (7, 2, 'New recipe alert!', '2023-07-20'),
    (8, 3, 'Excited for my upcoming trip!', '2023-08-25'),
    (9, 4, 'Movie night with friends!', '2023-09-30'),
    (10, 5, 'Reflecting on the week.', '2023-10-05'),
    (11, 1, 'Ready for the holidays!', '2023-11-10'),
    (12, 2, 'Exploring new hobbies.', '2023-12-15'),
    (13, 3, 'Productivity tips for the week.', '2024-01-20'),
    (14, 4, 'Fitness journey update.', '2024-02-25'),
    (15, 5, 'Weekend getaway adventures.', '2024-03-30'),
    (16, 1, 'Trying out new restaurants.', '2024-04-05'),
    (17, 2, 'Book recommendations.', '2024-05-10'),
    (18, 3, 'DIY home improvement projects.', '2024-06-15'),
    (19, 4, 'Music festival memories.', '2024-07-20'),
    (20, 5, 'Reflecting on personal growth.', '2024-08-25');

-- Instert data in Comments table.
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date)
VALUES
    (1, 1, 2, 'Welcome to the platform!', '2023-01-03'),
    (2, 2, 1, 'Great photo!', '2023-02-17'),
    (3, 3, 4, 'Keep up the good work!', '2023-03-22'),
    (4, 4, 3, 'Happy Friday to you too!', '2023-04-12'),
    (5, 2, 2, 'Have a fantastic weekend!', '2023-05-07'),
    (6, 3, 3, 'I love the weather too!', '2023-06-16'),
    (7, 4, 4, 'Can\'t wait to try it!', '2023-07-21'),
    (8, 5, 5, 'Where are you going?', '2023-08-26'),
    (9, 1, 1, 'Sounds fun!', '2023-10-01'),
    (10, 2, 2, 'Reflecting is important.', '2023-10-06'),
    (11, 3, 3, 'Holidays are the best!', '2023-11-11'),
    (12, 4, 4, 'What hobbies?', '2023-12-16'),
    (13, 5, 5, 'Share your tips!', '2024-01-21'),
    (14, 1, 1, 'Keep going!', '2024-02-26'),
    (15, 2, 2, 'Tell us more!', '2024-03-31'),
    (16, 3, 3, 'Any recommendations?', '2024-04-06'),
    (17, 4, 4, 'I need book ideas.', '2024-05-11'),
    (18, 5, 5, 'Show us your projects!', '2024-06-16'),
    (19, 1, 1, 'Share your memories!', '2024-07-21'),
    (20, 2, 2, 'Keep growing!', '2024-08-26');

-- Instert data in Likes table.
INSERT INTO Likes (like_id, post_id, user_id, like_date)
VALUES
    (1, 1, 3, '2023-01-04'),
    (2, 2, 4, '2023-02-18'),
    (3, 3, 5, '2023-03-23'),
    (4, 4, 1, '2023-04-13'),
    (5, 5, 3, '2023-05-08'),
    (6, 6, 2, '2023-06-17'),
    (7, 7, 1, '2023-07-22'),
    (8, 8, 5, '2023-08-27'),
    (9, 9, 4, '2023-09-16'),
    (10, 10, 3, '2023-10-21'),
    (11, 11, 2, '2023-11-26'),
    (12, 12, 1, '2023-12-31'),
    (13, 13, 5, '2024-01-11'),
    (14, 14, 4, '2024-02-15'),
    (15, 15, 3, '2024-03-20'),
    (16, 16, 2, '2024-04-25'),
    (17, 17, 1, '2024-05-30'),
    (18, 18, 5, '2024-06-04'),
    (19, 19, 4, '2024-07-09'),
    (20, 20, 3, '2024-08-14');

-- Instert data in Followers table.
INSERT INTO Followers (follower_id, follower_user_id, following_user_id, follow_date)
VALUES
    (1, 2, 1, '2023-01-05'),
    (2, 3, 2, '2023-02-19'),
    (3, 4, 3, '2023-03-24'),
    (4, 5, 4, '2023-04-14'),
    (5, 1, 5, '2023-05-09'),
    (6, 1, 3, '2023-06-01'),
    (7, 4, 2, '2023-07-08'),
    (8, 5, 3, '2023-08-12'),
    (9, 3, 4, '2023-09-15'),
    (10, 2, 4, '2023-10-20'),
    (11, 1, 2, '2023-11-25'),
    (12, 3, 5, '2023-12-30'),
    (13, 5, 1, '2024-01-10'),
    (14, 4, 1, '2024-02-14'),
    (15, 2, 5, '2024-03-19'),
    (16, 1, 4, '2024-04-24'),
    (17, 3, 1, '2024-05-29'),
    (18, 5, 2, '2024-06-03'),
    (19, 4, 5, '2024-07-08'),
    (20, 2, 3, '2024-08-13');

-- 1. Retrieve all posts made by a specific user.

SELECT * FROM Posts WHERE user_id = 2;

-- 2. Count the total number of comments for a particular post.
SELECT COUNT(*) AS total_comments FROM Comments WHERE post_id = 2;

-- 3. List all users who liked a specific post.
SELECT u.username FROM Users u
JOIN Likes l ON u.user_id = l.user_id
WHERE l.post_id = 5;

-- 4. Retrieve the most recent post made by a user.
SELECT * FROM Posts WHERE user_id = 2 ORDER BY post_date DESC LIMIT 1;

-- 5. Find the total number of likes received by a specific post.

SELECT COUNT(*) AS total_likes FROM Likes WHERE post_id = 5;
SELECT COUNT(*) AS total_likes FROM Likes WHERE post_id = 2;

-- 6. Get the usernames of users who have commented on a specific post.
SELECT u.username FROM Users u
JOIN Comments c ON u.user_id = c.user_id
WHERE c.post_id =3;

-- 7. Retrieve posts made by users followed by a specific user.
SELECT p.* FROM Posts p
JOIN Users u ON p.user_id = u.user_id
JOIN Followers f ON u.user_id = f.following_user_id
WHERE f.follower_user_id = 2;

-- 8. List all users who have not made any posts.
SELECT * FROM Users WHERE user_id NOT IN (SELECT DISTINCT user_id FROM Posts);

-- 9. Count the number of likes given by a specific user.
SELECT COUNT(*) AS total_likes_given FROM Likes WHERE user_id = 3;

-- 10. Retrieve posts with more than 3 comments.
SELECT * FROM Posts WHERE post_id IN (SELECT post_id FROM Comments GROUP BY post_id HAVING COUNT(*) > 3);

-- 11. Find the user who has the highest number of followers.
SELECT u.user_id, u.username, COUNT(f.follower_id) AS follower_count
FROM Users u
LEFT JOIN Followers f ON u.user_id = f.following_user_id
GROUP BY u.user_id, u.username
ORDER BY follower_count DESC
LIMIT 1;

-- 12. Retrieve users who have liked all posts made by a specific user.
SELECT u.username FROM Users u
WHERE NOT EXISTS (
    SELECT * FROM Posts p
    WHERE NOT EXISTS (
        SELECT * FROM Likes l
        WHERE l.user_id = u.user_id AND l.post_id = p.post_id
    )
);

-- 13. Get the user who has the highest total number of likes on their posts.
SELECT u.user_id, u.username, COUNT(l.like_id) AS total_likes
FROM Users u
JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
GROUP BY u.user_id, u.username
ORDER BY total_likes DESC
LIMIT 1;

-- 14. Find users who have not received any likes on their posts.
SELECT u.username FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
WHERE l.like_id IS NULL;

-- 15. Retrieve posts that have more comments than likes.
SELECT * FROM Posts
WHERE (SELECT COUNT(*) FROM Comments WHERE Comments.post_id = Posts.post_id)
      > (SELECT COUNT(*) FROM Likes WHERE Likes.post_id = Posts.post_id);

-- 16. Retrieve the usernames of users who have liked their own posts:
SELECT u.username
FROM Users u
JOIN Posts p ON u.user_id = p.user_id
JOIN Likes l ON p.post_id = l.post_id
WHERE u.user_id = l.user_id;

-- 17. List users who have commented on posts made by users they are not following:
SELECT DISTINCT u.username
FROM Users u
JOIN Comments c ON u.user_id = c.user_id
JOIN Posts p ON c.post_id = p.post_id
LEFT JOIN Followers f ON u.user_id = f.following_user_id
WHERE f.follower_user_id IS NULL;

-- OR below once

SELECT DISTINCT c.user_id
FROM Comments c
JOIN Posts p ON c.post_id = p.post_id
JOIN Users u1 ON c.user_id = u1.user_id
JOIN Users u2 ON p.user_id = u2.user_id
LEFT JOIN Followers f ON u1.user_id = f.follower_user_id AND u2.user_id = f.following_user_id
WHERE f.follower_user_id IS NULL;


-- ( As we got zero values so i'm going to insert some data )
-- Insert Users
INSERT INTO Users (user_id, username, email, date_joined)
VALUES
    (21, 'kamini29', 'kamini29@gmail.com', '2023-01-01'),
    (22, 'Rsihi32', 'Rsihi32@gmail.com', '2023-01-02');

-- Insert Posts
INSERT INTO Posts (post_id, user_id, content, post_date)
VALUES
    (21, 1, 'Kolar vibes', '2023-01-02'),
    (22, 2, 'Brigade tower', '2023-01-03');

-- Insert Followers
INSERT INTO Followers (follower_id, follower_user_id, following_user_id, follow_date)
VALUES
    (21, 1, 2, '2023-01-01'); -- user1 follows user2

-- Insert Comments (user2 comments on post by user1)
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date)
VALUES
    (21, 1, 2, 'Comment on post by user1', '2023-01-05');


-- 18. Find posts that have more likes than the average number of likes for all posts:
SELECT p.*
FROM Posts p
JOIN (
    SELECT post_id, COUNT(*) AS likes_count
    FROM Likes
    GROUP BY post_id
) l ON p.post_id = l.post_id
WHERE l.likes_count > (
    SELECT AVG(likes_count)
    FROM (
        SELECT post_id, COUNT(*) AS likes_count
        FROM Likes
        GROUP BY post_id
    ) AS avg_likes
);

-- 19. Retrieve users who have made at least 2 comments on the same post:
SELECT DISTINCT u.username
FROM Users u
JOIN Comments c1 ON u.user_id = c1.user_id
JOIN Comments c2 ON c1.post_id = c2.post_id AND c1.comment_id <> c2.comment_id
WHERE c1.post_id = c2.post_id;

-- 20. List users who have liked posts made by users they are following:
SELECT DISTINCT u.username
FROM Users u
JOIN Likes l ON u.user_id = l.user_id
JOIN Posts p ON l.post_id = p.post_id
JOIN Followers f ON u.user_id = f.following_user_id
WHERE l.user_id = f.follower_user_id;

-- 21. Find users who have liked every post made by a specific user:
SELECT DISTINCT u.username
FROM Users u
JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
WHERE NOT EXISTS (
    SELECT p2.post_id
    FROM Posts p2
    WHERE p2.user_id = 2
    AND p2.post_id NOT IN (SELECT l2.post_id FROM Likes l2 WHERE l2.user_id = u.user_id)
);

-- OR
SELECT DISTINCT u.username
FROM Users u
JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
WHERE NOT EXISTS (
    SELECT p2.post_id
    FROM Posts p2
    WHERE p2.user_id = 2
    AND p2.post_id NOT IN (SELECT l2.post_id FROM Likes l2 WHERE l2.user_id = u.user_id)
);

-- 22. Retrieve posts with the highest number of comments for each user:
SELECT *
FROM (
    SELECT p.*, ROW_NUMBER() OVER(PARTITION BY p.user_id ORDER BY COUNT(c.comment_id) DESC) AS rn
    FROM Posts p
    JOIN Comments c ON p.post_id = c.post_id
    GROUP BY p.post_id, p.user_id
) AS ranked_posts
WHERE rn = 1;

-- 23. List users who have made comments on posts made by users they are following:
SELECT DISTINCT u.username
FROM Users u
JOIN Comments c ON u.user_id = c.user_id
JOIN Posts p ON c.post_id = p.post_id
JOIN Followers f ON u.user_id = f.following_user_id
WHERE p.user_id = f.follower_user_id;

-- 24. Retrieve the post with the highest number of likes:
SELECT p.*
FROM Posts p
JOIN (
    SELECT post_id, COUNT(*) AS likes_count
    FROM Likes
    GROUP BY post_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
) AS top_post ON p.post_id = top_post.post_id;

-- 25. Retrieve the post with the highest number of likes along with number of likes

SELECT p.post_id, p.content AS post_content, COUNT(l.like_id) AS num_likes
FROM Posts p
LEFT JOIN Likes l ON p.post_id = l.post_id
GROUP BY p.post_id, p.content
ORDER BY num_likes DESC
LIMIT 1;


-- 26. Find users who have not liked any posts:
SELECT u.username
FROM Users u
LEFT JOIN Likes l ON u.user_id = l.user_id
WHERE l.like_id IS NULL;


























