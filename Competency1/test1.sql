Spool 'c:\ACC\ITSE2309\Test1.txt' append;
set echo on;
set serveroutput on;

SELECT orders.customer_num, COUNT(DISTINCT orders.order_num) "Num Orders", SUM(items.quantity) 
as "Total Quantity", SUM(items.total_price) as "Total Amount" 
FROM orders, items 
WHERE orders.order_num = items.order_num 
GROUP BY orders.customer_num 
ORDER BY orders.customer_num;



Spool off;
set serveroutput off;
set echo off;