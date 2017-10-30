#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 7/20 - The BETWEEN Operator

# Write a query to select all payments made between midnight may 25th and 1 second before midnight may 26th.
# Include all columns.

select * from payment where payment_date between '2005-05-25 00:00:00' and '2005-05-26 23:59:59';


# Write a query to select all films where the number of _words_ in the description is between 18 and 20.
# Include the following columns:
#
# COLUMN NAME           Note
# title                 Exists in film table.
# description           Exists in film table.
# release_year          Exists in film table.
# total_rental_cost     rental_duration * rental_rate

select 
    title,
    description,
    release_year,
    rental_duration * rental_rate as total_rental_cost
    from film where (LENGTH(description) - LENGTH(replace(description, ' ', '')) + 1) between 18 and 20;