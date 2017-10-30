#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 17/18 - The UPDATE statement

# Write a query to update the description of Film #100 to be anything you like!

UPDATE
  film
SET
  description = 'Who is your daddy, and what does he do?'
WHERE
  film_id = 100;