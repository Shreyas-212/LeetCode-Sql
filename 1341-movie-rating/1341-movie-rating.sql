
(SELECT name AS results
FROM Users
JOIN MovieRating USING(user_id)
GROUP BY user_id
ORDER BY COUNT(movie_id) DESC, name ASC
LIMIT 1)

UNION ALL
(SELECT title AS results
FROM Movies
JOIN MovieRating USING(movie_id)
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY movie_id
ORDER BY AVG(rating) DESC, title ASC
LIMIT 1);