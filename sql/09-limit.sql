#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 9/20 - The LIMIT Operator

# Write a query to select the top 20 payments in the payments table.
# (Note: do not worry about ordering. Just take the first 20 records of the table.)
# Include all columns

select * from payment limit 20;


# Write a query to select rows 1001-2000 (in terms of position) from the payments table.
# Only include rows where the amount is greater than 5.
# Include the following columns: Payment date, Amount

select
    payment_date,
    amount
    from payment where amount > 5 limit 1000 offset 1000;

