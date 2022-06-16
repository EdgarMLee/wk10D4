-- Q1
SELECT * FROM albums
WHERE num_sold >= 100000;

-- Q2
SELECT * FROM albums WHERE year BETWEEN 2018 and 2020;

-- Q3
SELECT * FROM albums WHERE band_id IN (1,3,4);

-- Q4
SELECT * FROM albums WHERE title ILIKE "the%";


