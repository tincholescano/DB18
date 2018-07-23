1)
INSERT INTO customer
(store_id, first_name, last_name, email, address_id)
VALUES
(1, 'Martin', 'Lescano', 'tincholescano2@gmail.com', (SELECT address_id FROM address
INNER JOIN city USING (city_id)
INNER JOIN country USING (country_id)
WHERE country.country LIKE 'United States'
ORDER BY address_id DESC LIMIT 1));

2)
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id) VALUES(
    CURRENT_DATE(),
    (SELECT inventory_id FROM inventory INNER JOIN film USING (film_id) WHERE title = "ACADEMY DINOSAUR" LIMIT 1),
    (SELECT customer_id FROM customer WHERE store_id = 1 LIMIT 1),
    (SELECT staff_id FROM staff WHERE store_id = 1 LIMIT 1));

3)
UPDATE film
SET release_year = CASE
    WHEN rating = 'G' THEN 1970
    WHEN rating = 'PG' THEN 1971
    WHEN rating = 'PG-13' THEN 1972
    WHEN rating = 'R' THEN 1973
    WHEN rating = 'NC-17' THEN 1974
END;

4)


5)
DELETE FROM film
WHERE title = 'ZORRO ARK';

ALTER TABLE film
  ADD CONSTRAINT fk_film_actor_film FOREIGN KEY (film_id) 
      REFERENCES film (film_id);
ON DELETE CASCASE
