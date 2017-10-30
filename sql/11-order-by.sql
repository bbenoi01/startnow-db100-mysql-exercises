#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 11/20 - The ORDER BY Clause

# Write a query to select all films ordered by length in ascending order.
# Include all columns.

SELECT* from film order by length asc;


# Write a query to select all unique ratings from the films table, ordered by rating in descending order.
# Include only the rating column.

select distinct rating from film order by rating desc;


# Write a query to select the top 20 payments, ordered by payment amount in descending order.
# Include only the following columns: Payment Date, Amount

select
    payment_date,
    amount
    from payment order by amount desc limit 20;


# Write a query to select the top 10 films with Behind The Scenes footage under 2 hours in length and
# a rental duration between 5 and 7 days, ordered by length in descending order.
# Include only the following columns: Title, Description, Special Features, Length, Rental Duration

SELECT
    title,
    description,
    special_features,
    length,
    rental_duration
    from film where special_features like '%Behind The Scenes%' and length < 120 and rental_duration between 5 and 7 order by length desc limit 10;