select *
from sales_table

--SECTION A3
select "COUNTRIES", sum("PROFIT") as"total_profit"
from "sales_table"
where "YEARS" = 2019
group by "COUNTRIES"
order by "total_profit" desc;

-- SECTION A4
select "YEARS", sum("PROFIT") as "highs_profit"
from "sales_table"
group by "YEARS"
order by "highs_profit" desc;

--SECTION A5
select "MONTHS", "YEARS", sum("PROFIT") as "profit_generated"
from "sales_table"
group by "MONTHS","YEARS"
order by "profit_generated";

-- SECTION A6
select "MONTHS", min("PROFIT") as "min_profit"
from "sales_table"
where "MONTHS" = 'December' and "YEARS" = 2018
group by "MONTHS"
order by "min_profit" desc;

--SECTION A8
select "BRANDS", sum("PROFIT") as "sum_profit"
from sales_table
where "COUNTRIES" = 'Senegal'
group by "BRANDS" 
order by "sum_profit" desc;

--SECTION B1
select "BRANDS", sum("QUANTITY") as "Qty"
from
(select *,
case when "COUNTRIES" in ('Nigeria','Ghana') then 'Anglophone'
else 'Francophone' end as "TERRITORY"
from "sales_table") as "t1"
where "TERRITORY" = 'Francophone'
group by "BRANDS"
order by "Qty" desc;

--SECTION B2

select "BRANDS", sum ("QUANTITY") as "qty"
from sales_table
where "COUNTRIES" = 'Ghana'
group by "BRANDS"
order by "qty" desc
limit 2;


--SECTION B3
select "BRANDS", sum ("QUANTITY") as "qty"
from sales_table
where "COUNTRIES" = 'Nigeria' and "BRANDS" not like '%malt'
group by "BRANDS"
order by "qty" desc;

--SECTION B4
select "BRANDS", "YEARS", sum("QUANTITY") as "qty"
from
(select *,
case when "COUNTRIES" in ('Nigeria', 'Ghana') then 'Anglophone'
else 'Francophone' end as "TERRITORY"
from "sales_table") as "t1"
where "BRANDS" like '%malt' and "TERRITORY" = 'Anglophone'
and "YEARS" in (2018, 2019)
group by "BRANDS", "YEARS"
order by "qty"  desc

--SECTION B5
select "BRANDS", sum("QUANTITY") as "highest_sold"
from sales_table
where "COUNTRIES" = 'Nigeria' and "YEARS" = 2019
group by "BRANDS"
order by "highest_sold" desc;

--SECTION B6
select "BRANDS", sum("QUANTITY") as "favorite_brand"
from sales_table
where "COUNTRIES" = 'Nigeria' and "REGION" = 'southsouth'
group by "BRANDS"
order by "favorite_brand" desc;

--SECTION B7
select "BRANDS", sum("QUANTITY") as "beer_qty"
from sales_table
where "COUNTRIES" = 'Nigeria'
group by "BRANDS"
order by "beer_qty" desc;

--SECTION B8
select "BRANDS","REGION", sum("QUANTITY") as "Budweiser_qty"
from sales_table
where "COUNTRIES" = 'Nigeria' and "BRANDS" = 'budweiser'
group by "BRANDS", "REGION"
order by "Budweiser_qty" desc;

--SECTION B9
select "BRANDS","REGION", sum("QUANTITY") as "Budweiser_qty"
from sales_table
where "COUNTRIES" = 'Nigeria' and "BRANDS" = 'budweiser' and "YEARS" = 2019
group by "BRANDS", "REGION"
order by "Budweiser_qty" desc;

--SECTION C1
select "COUNTRIES", sum("QUANTITY") as "Beer_qty"
from sales_table
where "BRANDS" not like '%malt'
group by "COUNTRIES"
order by "Beer_qty" desc;

--SECTION C2
select "SALES_REP", sum("QUANTITY") as "Highest_sale"
from sales_table
where "COUNTRIES" = 'Senegal' and "BRANDS" = 'budweiser'
group by "SALES_REP"
order by "Highest_sale" desc;

--SECTION C3

