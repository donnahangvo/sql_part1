-- SQL Day 1 Homework --


-- 1. How many actors are there with the last name "Wahlberg"?--
select * from actor

select first_name, last_name, actor_id
from actor
where last_name like 'Wahlberg';

-- How many payments were made between $3.99 and $5.99? --
select * from payment

select customer_id, amount 
from payment
where amount between 3.99 and 5.99;

select * from film

select film_id, title, rental_rate
from film
where rental_rate between 3.99 and 5.99;

-- What film does the store have the most of? (search in inventory) --
select * from inventory

select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

-- How many customers have the last name "William"?
select * from customer

select customer_id, count(last_name)
from customer
group by customer_id
having last_name like 'William';

-- What store employee (get the id) sold the most rentals? --
select * from rental

select staff_id, count(staff_id)
from rental
group by staff_id
order by count(staff_id) desc;

-- How many district names are there? --
select * from address

select count(distinct district)
from address

-- From store_id 1, how many customers have a last name ending with 'es'? (use customer table)--
select * from customer

select store_id, count(last_name)
from customer
where last_name like '%es'
group by store_id;

-- How many payment amounts (4.99, 5.99. etc.) had a number of rentals above 250 for customers with ids between 380 and 430?--
--(use group by and having > 250)--
select * from payment

select count(amount), amount, rental_id, customer_id
from payment
where customer_id between 380 and 430
group by rental_id, amount, customer_id
having rental_id > 250
order by customer_id desc;

-- Within the film table, how many rating categories are there? And what rating has the most movies total?--
select * from film

select rating, count(rating)
from film
group by rating
order by rating desc;
