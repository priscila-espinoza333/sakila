			/*Consulta 1 */
SELECT customer.first_name, customer.last_name, customer.email, address.address, city.city_id, city.city
FROM customer LEFT JOIN address
	ON customer.address_id = address.address_id
LEFT JOIN city
	ON city.city_id = address.city_id
WHERE address.city_id = 312;
            
/*--------------------------------*/    
			/*Consulta 2 */
SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film LEFT JOIN film_category
	ON film.film_id = film_category.film_id
LEFT JOIN category
	ON category.category_id = film_category.category_id
WHERE category.name LIKE 'CO%';
/*--------------------------------*/    
			/*Consulta 3 */
SELECT actor.actor_id, actor.first_name, film.title, film.description, film.release_year
FROM film LEFT JOIN film_actor
	ON film.film_id = film_actor.film_id
LEFT JOIN actor
	ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id = '5';    
/*--------------------------------*/    
			/*Consulta 4 */
SELECT store.store_id, customer.first_name, customer.last_name, customer.email, address.address, address.city_id
FROM customer LEFT JOIN address
	ON customer.address_id = address.address_id
LEFT JOIN store
	ON store.address_id = address.address_id
WHERE customer.store_id = 1
  AND store.store_id IN (1, 42, 312, 459);
/*--------------------------------*/    
			/*Consulta 5 */
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, actor.actor_id
FROM film LEFT JOIN  film_actor
	ON film.film_id = film_actor.film_id
LEFT JOIN actor 
	ON actor.actor_id = film_actor.actor_id
WHERE film.rating LIKE 'G%' && film.special_features LIKE '%Behind the Scenes' && actor.actor_id = 15;   
/*--------------------------------*/    
			/*Consulta 6 */
SELECT film_text.film_id, film_text.title, actor.actor_id, actor.first_name
FROM film_text LEFT JOIN film_actor
	ON film_text.film_id = film_actor.film_id
LEFT JOIN actor 
	ON actor.actor_id = film_actor.actor_id
WHERE film_text.film_id = 369;    
/*--------------------------------*/    
			/*Consulta 7 */
SELECT film.title, film.description, film.release_year, film.rating, film.special_featcategory.nameures, film.rental_rate 
FROM film LEFT JOIN film_category
	ON film.film_id = film_category.film_id
LEFT JOIN category
	ON category.category_id = film_category.category_id
WHERE film.rental_rate = 2.99 && category.name = 'drama';   
/*--------------------------------*/    
			/*Consulta 8 */
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
FROM film LEFT JOIN film_actor
	ON film.film_id = film_actor.film_id
LEFT JOIN actor 
	ON actor.actor_id = film_actor.actor_id
LEFT JOIN film_category
	ON film_category.film_id = film.film_id
LEFT JOIN category
	ON category.category_id = film_category.category_id
    WHERE category.name LIKE '%action' && actor.first_name = 'sandra' && actor.last_name = 'kilmer';
/*--------------------------------*/    
    