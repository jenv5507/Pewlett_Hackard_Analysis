# Pewlett Hackard Employee Analysis

Pewlett Hackard is looking at the succession plan for the company.  The team wanted to know how many people were retiring based on their birthdate and current title.  To get an idea of employees retirement-ready, we decided to look at anyone who was born between 1952 and 1955.  After determinig the number of people retiring, the team wanted to look at a mentorship program.  We pulled all current employees who were born in 1965 and their current titles.  With this information, the team would like to pair up an employee in leadership who is near retirement with someone at the company who can grow into the role.

Results
- The results of the ananlysis was very eye opening.  It was surprising to see that there are 72,458 people near retirement after creating the retiring title query.  To put this into context, we need to look at the current employee count which I have included in the Summary below. 
- To work through the analysis we had to do a DISTINCT ON from the employee number so that we could get their latest title.  It is great to see employees move up at a company and try out different roles.  Following is the code I used to get the current title for the employees.

![](/Challenge/DISTINCT.png) 

- I looked at the employees that were roughly 10 years younger then the people retiring.  To do this, I created a table that held the employees that were born in the year 1965.  After exporting the data and looking at how many lines were in the csv file, I could tell that we have some work to do in regards of filling all of these positions.

- As with the retiring employees, I had to do another DISTINCT ON from the employee number to retrieve just one line for each employee that is eligible for the Mentorship Program.



Summary

To help with the analysis, I created a query to look at total employee count by title and also how many people are eligible for the Mentorship Program which you can see in the image below.  The image below shows count of current employees by title, count of retiring employees by title and count of eligible employees for Mentorship Program.

-There are 72,458 roles that need to be filled out of a current employee count of 240,124.  This is about 30% of the total company.  We need to come up with a plan to make a seamless transition to new leadership as these employees begin retiring.

-Based on the criteria of employees who were born in 1965, there are only 1,549 employees that are eligible for the Mentorship Program so there are plenty of retirement-ready employees to mentor the next generation.  To fill more of the positions of employees that are retirement-ready, I suggest that we expand the criteria so that more people are eligible for the program.  




![](/Challenge/Retirement_Image.png) 


