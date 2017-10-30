#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 1/20 - The SELECT Statement

# Write a query to retrieve all rows and all columns from the actor table.
select * from actor;

# Write a query to retrieve all rows and only the last_name column from the actor table.
select last_name from actor;

# Write a query to retrieve all rows with the following columns from the actor table:
# 
# COLUMN NAME           Note
# title                 Exists in film table.
# description           Exists in film table.
# rental_duration       Exists in film table.
# rental_rate           Exists in film table.
# total_rental_cost     rental_duration * rental_rate
select
  title,
  description,
  rental_duration,
  rental_rate,
  rental_duration * rental_rate as total_rental_cost
from film;
