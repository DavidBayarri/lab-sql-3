use sakila;

-- Question 1: 121 diferent last names
SELECT count(DISTINCT last_name) 
FROM actor;

-- Question 2: 1 language
SELECT count(distinct language_id)
FROM film;

-- Question 3: 194 films

SELECT count(*)
FROM film
WHERE rating = "PG";

-- Question 4: 

SELECT *
FROM film
ORDER BY length desc
LIMIT 10;

-- QUestion 5: 266 days

SELECT DATEDIFF(MIN(cast(rental_date as date)),MAX(cast(rental_date as date)))
FROM rental;

-- Question 6: 
SELECT *
FROM rental;

SELECT *, date_format(rental_date, "%M") as month, date_format(rental_date, "%Y") as year
FROM rental
LIMIT 20;

-- Question 7:

SELECT *, date_format(rental_date, "%M") as month, date_format(rental_date, "%Y") as year
	case
    when 
FROM rental
LIMIT 20;

-- Question 8: 1156 rentals. 
SELECT count(*)
FROM rental
WHERE date_format(rental_date, "%M") = "May"
