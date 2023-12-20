use sakila;

-- 1. Display all available tables in the Sakila database.
show tables;
show full tables;

-- 2. Retrieve all the data from the tables actor, film and customer.
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

-- 3. Retrieve the following columns from their respective tables:
-- Titles of all films from the 'film' table
select title from sakila.film;

-- List of languages used in films, with the column aliased as 'language' from the 'language' table
select name as language from sakila.language;
-- List of first names of all employees from the 'staff' table
select first_name from sakila.staff;

-- 4. Retrieve unique release years.
select distinct release_year from sakila.film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
select count(*) as number_of_stores from sakila.store;

-- 5.2 Determine the number of employees that the company has.
select count(*) from sakila.staff;
select count(*) from sakila.actor;

-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(*) as available_films from sakila.inventory;
select count(*) rented_films from sakila.rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct last_name from sakila.actor;

-- 6. Retrieve the 10 longest films.
select distinct length from sakila.film 
order by length desc
limit 10;

-- 7. Use filtering techniques in order to:
--  7.1 Retrieve all actors with the first name "SCARLETT".
select * from sakila.actor
where first_name='SCARLETT';
