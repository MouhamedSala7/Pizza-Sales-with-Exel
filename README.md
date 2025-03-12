Here’s a **README.md** file you can copy and add directly to your GitHub repository for the **Pizza Sales Analysis** project:  

---

### **📌 README.md - Pizza Sales Analysis**  

```markdown
# 🍕 Pizza Sales Analysis  

This project analyzes pizza sales data using **SQL** and **Excel** to uncover key insights such as revenue trends, best-selling pizzas, and peak order times.  

## 📊 **Project Overview**  

- **Objective**: Extract valuable business insights from pizza sales data.  
- **Tools Used**:  
  - **SQL** (Data Cleaning, Querying, and Analysis)  
  - **Excel** (Data Storage and Visualization)  

## 📁 **Dataset Overview**  

The dataset contains transactional data with key fields such as:  

- `order_id` → Unique order identifier  
- `order_date` → Date of order  
- `order_time` → Time of order  
- `pizza_name` → Pizza type  
- `pizza_category` → Classic, Supreme, Veggie, Chicken  
- `pizza_size` → S, M, L, XL  
- `quantity` → Number of pizzas per order  
- `total_price` → Revenue from the order  

## 🛠️ **Key SQL Queries Used**  

### **Total Revenue**  
```sql
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
```

### **Total Pizzas Sold**  
```sql
SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales;
```

### **Average Order Value**  
```sql
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_Order_Value FROM pizza_sales;
```

### **Busiest Order Hours**  
```sql
SELECT DATEPART(HOUR, order_time) AS order_hour, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY order_hour;
```

For more queries, check the [`PIZZA SALES SQL QUERIES`](PIZZA_SALES_SQL_QUERIES.docx) file.

## 📈 **Key Insights & Findings**  

✅ **Best-Selling Pizzas**: Identified the top 5 most sold pizzas.  
✅ **Worst-Selling Pizzas**: Found the lowest-performing pizzas.  
✅ **Peak Sales Times**: Discovered when customers order the most.  
✅ **Category & Size Impact**: Analyzed how different pizza sizes and categories contribute to revenue.  



### **2️⃣ Load Data into SQL**  
- Import `pizza_sales_dataset.xlsx` into your database.  
- Execute `SQLQuery1.sql` to run the analysis.  

### **3️⃣ Analyze Data in Excel**  
- Use Excel to create summary reports and visualizations.  

 

---

### 👨‍💻 **Author**: Mohamed Salah  
📧 Contact: [mo7aaasalah@gmail.com]  
```

---

This **README** is structured, professional, and ready for GitHub. You can **copy-paste** it directly into your repository! 🚀 Let me know if you want any modifications.
