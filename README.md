# Project Scenario

Mint Classics Company, a retailer of classic model cars and other vehicles, is looking at closing one of their storage facilities.

To support a data-based business decision, they are looking for suggestions and recommendations for reorganizing or reducing inventory, while still maintaining timely service to their customers. For example, they would like to be able to ship a product to a customer within 24 hours of the order being placed.

## Project Objectives

1. Explore products currently in inventory.
2. Determine important factors that may influence inventory reorganization/reduction.
3. Provide analytic insights and data-driven recommendations.


## Goals

1) Where are items stored and if they were rearranged, could a warehouse be eliminated?
2) How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
3) Are we storing items that are not moving? Are any items candidates for being dropped from the product line?

---------------------------------------------------------------------------------------------------------------------------------------
Tables are produced using SQL

Quantity of All items in warehouse

| warehouseCode | quantityInStock|   
|---------------|----------------|   
| a	| 131688 |
| b	| 219183 |
| c	| 124880 |
| d	| 79380 |

Total amount ordered by each warehouse

| warehousecode| totalpriceordered |
|---------------|------------------|
| b | 3,843,015.24 |
| a | 2,069,141.22 |
| c | 1,796,940.17 | 
| d | 1,869,942.48 |


Based on the quantity in stock for each warehouse, D is the best candidate to eliminate. Warehouse D has the least inventory and has the second to least amount of product ordered. I recommend moving products from  warehouse D, to warehouses A and C. Splitting the product between warehouses A and C will get them closer to the capacity and production that warehouse B is at, thus allowing you to cease operations at warehouse D. 
### Considerations
- Warehouse D contains trucks, trains, buses, and ships. These larger items require more space.
- How removing a warehouse will affect delivery time.
- The capacity of the warehouses.

Amount of product in stock vs amount ordered
| productcode	| quantityinstock |	quantityordered |
|-------------|-----------------|-----------------|
|S12_2823	| 9997 |	1028|
|S18_1984	| 9772 | 917|
|S700_2466	| 9653 |	984|
|S24_3432	| 9446 |	894|
|S18_2325	| 9354 |	957|
|S32_2206	| 9241 |	906|
|S24_3151	| 9173 |	991|
|S18_3482	| 9127 |	915|
|S12_3380	| 9123 |	925|
|S18_1589	| 9042 |	914|
|S18_3685	| 8990 |	948|
|S18_1889	| 8826 |	972|
|S700_4002	| 8820 |	1085|
|....|||
|S24_1046	|1005|	803|
|S18_2581	|992	|917|
|S32_3522	|814	|988|
|S700_1938	|737|	898|
|S50_4713	|600	|992|
|S700_3167	|551|	1047|
|S18_2795	|548	|880|
|S18_2248	|540	|832|
|S72_3212	|414	|958|
|S32_1374	|178	|1014|
|S32_4289	|136	|972|
|S12_1099	|68	|933|
|S24_2000	|15	|1015|

As you can see in the table above, for most products the quantity in stock eclipses the quantity ordered by many times. Only 10% of products have a quantity in stock that is less thant the total amount **<ins>ever**</ins> ordered. I believe you can reduce the inventory of most items significantly. For a few items that have a quantity in stock that is in the bottom 10%, I recommend that they are all imediately raised to at least 25% of their lifetime sales so there is no risk of running out of stock.




