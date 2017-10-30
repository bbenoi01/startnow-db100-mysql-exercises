#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 4/20 - The AND Operator

# Write a query to retrieve all payments made on 05/27/2005.
# Include only the following columns: Payment ID, Amount, Payment Date
select
	payment_id,
    amount,
    payment_date
    from payment where payment_date >= '2005-05-27' and payment_date <= '2005-05-28';


# Write a query to retrieve all active customers with last names beginning with S.
# Include all columns.
# Hint: You can use the LEFT string function to chop up a string to get the first character.
select
	*
    from customer where last_name like 'S%';
