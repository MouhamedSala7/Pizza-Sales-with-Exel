SELECT * FROM pizza_sales

SELECT sum(total_price) as total_Revenue
    from pizza_sales 

SELECT SUM(total_price) / COUNT(DISTINCT order_id) as Average_order_value 
 FROM pizza_sales

 SELECT SUM(quantity) as Total_Pizza_Solid
  From pizza_sales

 SELECT Count(DISTINCT order_id) as Total_Orders 
  From pizza_sales

SELECT CAST( CAST( sum(quantity) AS decimal (10,2))/ CAST( Count(DISTINCT order_id) AS decimal(10,2))
        AS decimal(10,2)) AS AVG_Pizza_Per_Order   
 FROM pizza_sales

 --Daily trend
SELECT DATENAME(DW , order_date) as order_day , count(DISTINCT order_id) AS  total_orders 
 FROM pizza_sales
 Group by DATENAME(DW, order_date)

--Hourly trend 
SELECT DATEPART(HOUR , order_time) as order_hours , count(DISTINCT order_id) AS  total_orders 
 FROM pizza_sales
 Group by DATEPART(HOUR , order_time)
 ORDER BY DATEPART(HOUR , order_time)

 --percentage of sales by pizza category
 SELECT pizza_category , sum(total_price) AS Total_Sales , sum(total_price )*100 /
 (SELECT SUM(total_price) from pizza_sales Where Month(order_id)=1 )AS PCT
  FROM pizza_sales 
  Where Month(order_id)=1
  group by pizza_category

 SELECT pizza_size ,CAST( sum(total_price) AS decimal(10,2)) AS Total_Sales , CAST( sum(total_price )*100 /
 (SELECT SUM(total_price) from pizza_sales )AS decimal(10,2)) AS PCT
  FROM pizza_sales 
  group by pizza_size
  order by PCT DESC 

  SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

-- Top 5 Best Sellers by Total Pizzas Sold
SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

--Bottom 5 Best Sellers by Total Pizzas Sold
SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold 

