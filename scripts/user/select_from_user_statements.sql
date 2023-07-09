SELECT * FROM `user` WHERE gender = 'male' AND age = 25;

SELECT * FROM `user` WHERE gender != 'male' OR age > 25;

SELECT * FROM `user` WHERE birthdate BEtWEEN '2000-01-01' AND '2001-02-03';

SELECT * FROM `user` WHERE gender != 'male' OR age > 25 ORDER BY birthdate DESC LIMIT 10;

SELECT COUNT(id), gender FROM user
WHERE gender = 'female'
GROUP BY gender;

-- Pagination (last added users)
SELECT * FROM user ORDER BY id DESC LIMIT 10;

SELECT * FROM user WHERE id < last_seen_id ORDER BY id DESC LIMIT 10;
