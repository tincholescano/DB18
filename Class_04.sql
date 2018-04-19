1)
select title, special_features from film where rating like 'PG-13';

2)
select title, length from film;

3)
select title, rental_rate, replacement_cost from film where replacement_cost between 20.00 and 24.00;

4)
select f.title, c.name, f.rating from film_category fc, film f, category c where f.film_id = fc.film_id and fc.category_id = c.category_id and f.special_features like 'Behind the Scenes';

5)
select a.first_name, a.last_name, f.title from actor a, film_actor fa, film f where fa.actor_id = a.actor_id and fa.film_id = f.film_id and f.title like 'ZOOLANDER FICTION';

6)
select a.address, ci.city, co.country from store s, address a, city ci, country co where ci.country_id = co.country_id and a.city_id = ci.city_id and s.address_id = a.address_id and s.store_id = 1;

7)
select distinct f1.title , f2.title, f1.rating, f2.rating from film f1, film f2 where f1.rating = f2.rating;

8)
select distinct title, first_name, last_name , s.store_id from store s, staff, film f ,inventory i where s.store_id = i.store_id and i.film_id = f.film_id and s.store_id=2 and s.manager_staff_id = staff.staff_id;
