1)
select * from actor a1 where exists (select * from actor a2 where a1.last_name = a2.last_name and a1.actor_id <> a2.actor_id) order by last_name;

2)
select * from actor a1 where not exists (select * from film_actor a2 where a1.actor_id = a2.actor_id) order by actor_id;

3)
select * from customer c where exists (select * from rental r1 where c.customer_id = r1.customer_id and not exists(select * from rental r2 where c.customer_id = r2.customer_id and r1.rental_id <> r2.rental_id));

4)
select * from customer c where exists (select * from rental r1 where c.customer_id = r1.customer_id and exists(select * from rental r2 where c.customer_id = r2.customer_id and r1.rental_id <> r2.rental_id));

5)
select * from actor a where exists(select * from film_actor fa, film f where a.actor_id = fa.actor_id and fa.film_id = f.film_id and f.title in ('BETRAYED REAR', 'CATCH AMISTAD'));

6)
select * from actor a where exists(select * from film_actor fa, film f where a.actor_id = fa.actor_id and fa.film_id = f.film_id and f.title in ('BETRAYED REAR') and f.title not in ('CATCH AMISTAD'));

7)
select a.actor_id, a.first_name, a.last_name from actor a where exists (select * from film_actor fa, film f where fa.actor_id = a.actor_id and f.film_id = fa.film_id and f.title = 'BETRAYED REAR') and exists (select * from film_actor fa, film f where fa.actor_id = a.actor_id and f.film_id = fa.film_id and f.title = 'CATCH AMISTAD');

8)
select * from actor a where not exists (select * from film_actor fa where a.actor_id = fa.actor_id and exists (select * from film f where f.film_id = fa.film_id and title in ('BETRAYED REAR', 'CATCH AMISTAD')));
