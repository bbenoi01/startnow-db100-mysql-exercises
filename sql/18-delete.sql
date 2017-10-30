#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 18/18 - The DELETE statement
#
# A common for using the DELETE command, you're cleaning out old or "stale" data
# Write a query to delete any films that are not currently in Sakila's inventory. (Hint, you will need to use several LEFT JOINs)

DELETE film_category
FROM
  sakila.film_category
  LEFT JOIN film ON film.film_id = film_category.film_id
  LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE
  inventory.film_id IS NULL;

DELETE film_actor
FROM
  sakila.film_actor
  LEFT JOIN film ON film.film_id = film_actor.film_id
  LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE
  inventory.film_id IS NULL;

DELETE film
FROM
  sakila.film
  LEFT JOIN inventory ON film.film_id = inventory.film_id
WHERE
  inventory.film_id IS NULL;