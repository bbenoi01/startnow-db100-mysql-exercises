#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 10/20 - The IS NULL and IS NOT NULL conditions

# Write a query to select all staff members without a password.
# Include all columns.

select * from staff where password is null;


# Write a query to select all staff members with a password.
# Include all columns, except the password column.

select
    staff_id,
    first_name,
    last_name,
    address_id,
    picture,
    email,
    store_id,
    active,
    username,
    last_update
    from staff where password is not null;

