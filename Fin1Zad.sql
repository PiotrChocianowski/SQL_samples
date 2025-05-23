/*jaki procent klientów ma daną liczbę zleceń*/
select 
   orders1
	,count(customer_id) 				   as customers1
	,total_customers
	,round((count(customer_id)/total_customers)*100,2) as 'wynik w %'
from 
   ( 
select  
   customer_id
   ,count(order_id) as orders1
   ,(select count(distinct customer_id) from orders) as total_customers
from orders 
   group by 1
   ) o
   group by 1
   order by 1
   
   
   
   

