#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 12/20 - The INNER JOIN

# Write a query to select all rentals (complete with customer name and film title) made on 2005-05-24, ordered by rental date in descending order.
# Include the following columns: Rental Date, Customer First Name, Customer Last Name, Film Title
# You will need to perform an inner join on the customer, inventory and film tables (in that order) to include the necessary columns.

SELECT
	rental_date,
    first_name,
    last_name,
    title
    from rental
    inner join customer on customer.customer_id = rental.customer_id
    inner join inventory on inventory.inventory_id = rental.rental_id
    inner join film on film.film_id = inventory.inventory_id
where DATE(rental_date) like '2005-05-24' order by rental_date desc;    