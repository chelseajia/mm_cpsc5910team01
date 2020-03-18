
/* Creating Stored Procedures to find contractor schedule */
#drop procedure find_contractor_schedule;
DELIMITER //
CREATE PROCEDURE find_contractor_schedule
(IN name CHAR(20))
BEGIN
	select fs.service_date "Service Appointment Time", 
	   fs.estimated_lasting_time "Estimated Service Time (Hours)", 
       fs.service_description "Service Description",
       concat(c.first_name, " " , c.last_name) "Contractor Name",
       cu.phone "Customer Phone Number",
       concat(l.address, " ", l.city, " ", l.state, " ", l.zip_code) "Customer Address"
	from ((FutureSchedule fs inner join Contractor c on fs.contractor_id = c.contractor_id) inner join
       Customer cu on fs.customer_id = cu.customer_id) inner join
       Location l on cu.location_id = l.location_id  
	where concat(c.first_name, " ", c.last_name) = name
	Order by fs.service_date;
END //
DELIMITER ;

CALL find_contractor_schedule('Chelsea Jia');

/* Creating Stored Procedures to find PO details */
#drop procedure specify_PO;

DELIMITER //
CREATE PROCEDURE specify_PO
(IN PurchaseOrderID int)
BEGIN
	select po.purchase_order_id "PO Number",
		   po.purchase_order_date "Purchase Order Date",
		   s.supplier_name "Supplier Name",
		   p.product_name "Product Name",
		   pod.purchase_price "Purchase Price",
		   pod.quantity "Quantity",
		   pod.purchase_price * pod.quantity "Line Amount"
	from ((PurchaseOrder po right join PurchaseOrderDetail pod on po.purchase_order_id = pod.purchase_order_id)
		  left join Product p on pod.product_id = p.product_id)
		  left join Supplier s on po.supplier_id = s.supplier_id
	where po.purchase_order_id = PurchaseOrderID
	order by po.purchase_order_id;
END //
DELIMITER ;

CALL specify_PO(9);

/* Creating Stored Procedures to find TOP customers by sales */
#drop procedure top_customer;

DELIMITER //
CREATE PROCEDURE top_customer
(IN TopNo_ranking_by_costomer_sales int)
BEGIN
SELECT p.Customer_ID Customer_ID, c.first_name First_Name, c.last_name Last_Name, sum(p.Payment_Amount) Total_Payment
FROM mm_cpsc5910team01.Payment p join mm_cpsc5910team01.Customer c
ON p.customer_id = c.customer_id
Group By customer_id
order by total_payment desc
limit TopNo_ranking_by_costomer_sales;
END //
DELIMITER ;

CALL top_customer(5);

/* Query to find TOP contractors by sales */

select c.contractor_id "Contractor ID",
       concat(c.first_name, " ", c.last_name) "Contractor",
       sum(py.payment_amount) "Business brought"
from ((PastService ps inner join Payment py on ps.payment_id = py.payment_id)
	   inner join Contractor c on ps.contractor_id = c.contractor_id)
group by c.contractor_id
order by sum(py.payment_amount) desc;

/*To show sales amount for each product from high to low*/

select sd.product_id, p.product_name, sum(sd.quantity)*p.sale_price Total_Sale
from mm_cpsc5910team01.Product p join mm_cpsc5910team01.SalesOrderDetail sd
on p.product_id = sd.product_id
group by sd.product_id
order by Total_sale desc;

/*To show the profit for each product from high to low*/
select sd.product_id, p.product_name, sum(sd.quantity)*(p.sale_price - 
(select avg(pd.purchase_price) from mm_cpsc5910team01.PurchaseOrderDetail pd
group by pd.product_id
having pd.product_id = p.product_id)) Total_Profit
from mm_cpsc5910team01.Product p join mm_cpsc5910team01.SalesOrderDetail sd
on p.product_id = sd.product_id 
group by sd.product_id
order by Total_Profit desc;

/*To show current inventory level*/

select p.product_id,
	   p.product_description "Product Description",
	   p.quantity_in_stock "Base Stock",
	   sum(pod.quantity) "Purchase Order Quantity (+)",
	   sum(sod.quantity) "Sales Order Quantity (-)",
	   (ifnull(p.quantity_in_stock,0) + ifnull(sum(pod.quantity),0) - ifnull(sum(sod.quantity),0)) "Current Inventory Level"
from ((Product p left join SalesOrderDetail sod on p.product_id = sod.product_id)
	   left join PurchaseOrderDetail pod on p.product_id = pod.product_id)
group by p.product_id
order by p.product_id;


/* To show purchase amount from each supplier */

select po.supplier_id, s.supplier_name, sum(pd.purchase_price*pd.quantity) Total_Amount
from mm_cpsc5910team01.PurchaseOrder po join mm_cpsc5910team01.PurchaseOrderDetail pd
on po.purchase_order_id = pd.purchase_order_id join mm_cpsc5910team01.Supplier s 
on po.supplier_id = s.supplier_id
group by po.supplier_id;


/* To show employee's performance from high to low*/

select s.employee_id, concat(se.first_name, se.last_name) Employee_Name, count(*) No_Of_Transaction, sum(p.payment_amount) Sales_Amount
from mm_cpsc5910team01.SalesOrder s join mm_cpsc5910team01.SalesEmployee se
on s.employee_id = se.employee_id join mm_cpsc5910team01.Payment p
on s.payment_id = p.payment_id
group by se.employee_id
order by Sales_Amount desc;

/* To show the sales amount for each store */

select se.store_code, sum(p.payment_amount) Total_Sales_Amount
from mm_cpsc5910team01.SalesOrder so join mm_cpsc5910team01.SalesEmployee se
on so.employee_id = se.employee_id join mm_cpsc5910team01.Store s
on se.store_code= s.store_code join mm_cpsc5910team01.Payment p
on so.payment_id = p.payment_id
group by se.store_code;

/* To show the total payment by month including both services and products*/

select extract(month from payment_date) as Month, sum(payment_amount) as payment_by_month
from Payment
group by 1;






