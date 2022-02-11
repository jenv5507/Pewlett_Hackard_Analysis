# Pewlett Hackard Employee Analysis

Pewlett Hackard is looking at the succession plan.  The team wanted to know how many people were retiring based on their birthdate and current title.  After determinig the number of people retiring, the team wanted to look at a mentorship program.  We pulled all current employees who were born in 1965 and their current titles.  With this information, th team would like to pair up an employee in leadership who in near retirement with someone at the company who can grow into the role.

Results
- The results of the ananlysis was very eye opening.  It was surprising to see that there are 72,458 people near retirement!  To put this into context, we need to look at the current employee count which I have included in the Summary below. 
- To work through the analysis we had to do a DISTINCT ON from the employee number so that we could get their latest title.  It is great to see employees move up at a company and try out different roles.  Following is the code I used to get the unique titles.
- 
![](/Challenge/DISTINCT.png) 

- I looked at the employees that were roughly 10 years younger then the people retiring.  To do this, I created a table that held the employees that were born in the year 1965.  After exporting the data and looking at how many lines were in the csv file, I could tell that we have some work to do in regards of filling all of these positions.
- As with the retiring employees, I had to do another DISTINCT ON from the employee number to retrieve just one line for each employee that is eligible for the Mentorship Program.



Summary
-There are 72,458 roles that need to be filled






![](/Challenge/Retirement_Image.png) 

- 
