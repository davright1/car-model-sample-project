-- Where are items stored and if they were rearranged, could a warehouse be eliminated? --
-- total amount ordered from each warehouse --
select products.warehousecode ,sum(orderdetails.quantityordered)* avg(orderdetails.priceeach) as amountordered
from orderdetails
left join products
on orderdetails.productcode = products.productcode
group by warehousecode
order by sum(quantityordered) desc;

-- quantity in stock for each warehouse --
select  warehouseCode, sum(quantityInStock) as totalquantityinstock
from products
group by warehouseCode;

-- How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item? --
-- quantity in stock and quantity ordered for each product--
select orderdetails.productcode, products.quantityinstock, sum(orderdetails.quantityordered) as quantityordered
from orderdetails
left join products
on orderdetails.productcode = products.productcode
group by productcode
order by quantityinstock desc;
-- Are we storing items that are not moving? Are any items candidates for being dropped from the product line?--
-- monitoring last time every product was ordered -- 
select od.productcode, max(orderDate) as mostrecentorderdate
FROM orders o
JOIN orderdetails od
ON o.orderNumber = od.orderNumber
GROUP BY od.productcode;