# Welcome to Hello dbt...

### Using the starter project

Try running the following commands:
- dbt init
- dbt debug
- dbt run
- dbt test
- dbt seed
- dbt docs

### DDL for the examples

```SQL
  -- Create Date table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.Dates` ( Date DATE,
    Day STRING,
    Month STRING,
    Year STRING,
    Quarter INT,
    DayOfWeek STRING,
    WeekOfYear INT,
    Updated_at TIMESTAMP);
  -- Create Customers table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.Customers` ( CustomerID int,
    FirstName STRING,
    LastName STRING,
    Email STRING,
    Phone STRING,
    Address STRING,
    City STRING,
    State STRING,
    ZipCode STRING,
    Updated_at TIMESTAMP);
  -- Create Employees table
CREATE OR REPLACE TABLE
  `newagent-001.l1_landing.Employees`( EmployeeID INT,
    FirstName STRING,
    LastName STRING,
    Email STRING,
    JobTitle STRING,
    HireDate DATE,
    ManagerID INT,
    Address STRING,
    City STRING,
    State STRING,
    ZipCode STRING,
    Updated_at TIMESTAMP );
  -- Create Stores table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.Stores` ( StoreID INT,
    StoreName STRING,
    Address STRING,
    City STRING,
    State STRING,
    ZipCode STRING,
    Email STRING,
    Phone STRING,
    Updated_at TIMESTAMP );
  -- Create Suppliers table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.Suppliers` ( SupplierID INT,
    SupplierName STRING,
    ContactPerson STRING,
    Email STRING,
    Phone STRING,
    Address STRING,
    City STRING,
    State STRING,
    ZipCode STRING,
    Updated_at TIMESTAMP );
  -- Create Products table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.Products` ( ProductID INT,
    Name STRING,
    Category STRING,
    RetailPrice Numeric,
    SupplierPrice Numeric,
    SupplierID INT,
    Updated_at TIMESTAMP );
  -- Create Orders table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.Orders` ( OrderID INT,
    OrderDate DATE,
    CustomerID STRING,
    EmployeeID INT,
    StoreID INT,
    Status STRING,
    Updated_at TIMESTAMP );
  -- Create OrderItems table
CREATE TABLE IF NOT EXISTS
  `newagent-001.l1_landing.OrderItems` ( OrderItemID INT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice Numeric,
    Updated_at TIMESTAMP );
```

### Sample Data

The sample data are in the folder - raw_data.

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
