select * from sales.date;

-- joining two tables as of their relation
select sales.transactions.*,sales.date.* from sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date;

-- aggregation data using the joined table, this will give a total sales amount of the year.
select sum(sales.transactions.sales_amount) from sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;

-- aggregating more than two tables
-- here we are viewing all 2020 data for chennai = "Mark001"
select sales.transactions.*,sales.date.* from sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = "Mark001";

-- to sum revenue for this aggregation
select sum(sales.transactions.sales_amount) 
from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = "Mark001";