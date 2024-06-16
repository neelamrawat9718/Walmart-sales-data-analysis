SELECT * FROM walmartsales.sale;
Alter table walmartsales.sale
add day_name varchar(50);
Select * from walmartsales.sale;
Alter table walmartsales.sale
drop column time_of_day;
Select 
case 
when TIME(time) between "00:00:00" and "12:00:00" then "Morning"
when TIME(time) between "12:01:00" and "16:00:00" then "Afternoon"
else "Evening" end as day_name from walmartsales.sale;
set sql_safe_updates = 0;
Update walmartsales.sale set day_name = (case 
when TIME(time) between "00:00:00" and "12:00:00" then "Morning"
when TIME(time) between "12:01:00" and "16:00:00" then "Afternoon"
else "Evening" end);
SELECT * FROM walmartsales.sale;
Select Date,dayname(Date) from walmartsales.sale;
Alter table walmartsales.sale
Add name_day varchar(50);
Update walmartsales.sale 
set name_day = dayname(Date);
SELECT * FROM walmartsales.sale;
Alter table walmartsales.sale
add month_name varchar(50);
Update walmartsales.sale
set month_name = monthname(Date);
SELECT * FROM walmartsales.sale;
Select Max(cogs) from walmartsales.sale

Select distinct City from walmartsales.sale;
Select distinct city,branch from walmartsales.sale;
Select distinct Product_line from walmartsales.sale;
Select max(Payment) from walmartsales.sale;
Select max(Productline) from walmartsales.sale;

Select sum(Quantity) as qty,Product line
from walmartsales.sale
group by Product_line
Order by qty;

Select month_name, sum(Total) as Revenue
from walmartsales.sale
group by month_name
order by Revenue;



















    


