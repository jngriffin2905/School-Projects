
-- create the database
DROP DATABASE IF EXISTS ciscos_jgriffin;
CREATE DATABASE ciscos_jgriffin;

-- select the database
USE ciscos_jgriffin;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  company_name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(12),
  billing_address_street VARCHAR(60),
  billing_address_city VARCHAR(40),
  billing_address_state VARCHAR(2),
  billing_address_zip VARCHAR(10)
);

CREATE TABLE dumpsters (
  dumpster_id INT PRIMARY KEY AUTO_INCREMENT,
  yard_size INT ,
  type VARCHAR(10),
  status VARCHAR(60)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  dumpster_id INT,
  order_date DATE,
  delivery_date DATE,
  pickup_date DATE,
  status VARCHAR(40),
  FOREIGN KEY(customer_id),
  FOREIGN KEY (dumpster_id),
  REFERENCES customers(customer_id),
  REFERENCES dumpsters(dumpster_id)
);

CREATE TABLE employees (
  employee_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  position VARCHAR(40),
  phone INT
);

CREATE TABLE deliveries (
  delivery_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  employee_id INT,
  delivery_date DATE,
  delivery_time TIME,
  delivery_address_street VARCHAR(60),
  delivery_address_city VARCHAR(40),
  delivery_address_state VARCHAR(2),
  delivery_address_zip VARCHAR(10),
  delivery_status VARCHAR(40),
  notes VARCHAR(255),
  FOREIGN KEY(order_id),
  FOREIGN KEY (employee_id),
  REFERENCES orders(order_id),
  REFERENCES employees(employee_id)
);

CREATE TABLE pickups (
  pickup_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  employee_id INT,
  pickup_date DATE,
  pickup_time TIME,
  pickup_address_street VARCHAR(60),
  pickup_address_city VARCHAR(40),
  pickup_address_state VARCHAR(2),
  pickup_address_zip VARCHAR(10),
  pickup_status VARCHAR(40),
  FOREIGN KEY(order_id),
  FOREIGN KEY (employee_id),
  REFERENCES orders(order_id),
  REFERENCES employees(employee_id)
);

CREATE TABLE invoices (
  invoice_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  invoice_date DATE,
  due_date DATE,
  delivery_fee DECIMAL(6,2),
  pickup_fee DECIMAL(6,2),
  rental_fee DECIMAL(6,2),
  weight DECIMAL(6,2),
  price_per_ton DECIMAL(6,2),
  total_amount_due DECIMAL(6,2),
  amount_paid DECIMAL(6,2),
  payment_status VARCHAR(40),
  FOREIGN KEY(order_id),
  REFERENCES orders(order_id)
);

CREATE TABLE maintenance (
  maintenance_id INT PRIMARY KEY AUTO_INCREMENT,
  dumpster_id INT,
  vehicle_id INT,
  maintenance_date DATE,
  description VARCHAR(255),
  status VARCHAR(40),
  FOREIGN KEY(dumpster_id),
  FOREIGN KEY(vehicle_id),
  REFERENCES dumpsters(dumpster_id),
  REFERENCES vehicles(vehicle_id)
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  invoice_id INT,
  payment_date DATE,
  amount DECIMAL(6,2),
  payment_method VARCHAR(20),
  FOREIGN KEY(invoices_id),
  REFERENCES invoices(invoice_id)
);

CREATE TABLE vehicles (
  vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
  license_plate VARCHAR(10),
  make VARCHAR(40),
  model VARCHAR(40),
  vehicle_year YEAR,
  status VARCHAR(40),
  employee_id INT,
  FOREIGN KEY(employee_id),
  REFERENCES employees(employee_id)
);

CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  employee_id INT,
  username VARCHAR(50),
  password VARCHAR(255),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  access VARCHAR(255),
  permissions VARCHAR(255),
  FOREIGN KEY(employee_id),
  REFERENCES employees(employee_id)
);

-- grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON ciscos_jgriffin.*
TO 'root'@'localhost';