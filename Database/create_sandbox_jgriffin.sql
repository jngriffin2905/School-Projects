-- create the database
DROP DATABASE IF EXISTS sandbox_jgriffin;
CREATE DATABASE sandbox_jgriffin;

-- select the database
USE sandbox_jgriffin;

CREATE TABLE clients
(
  client_id INT PRIMARY KEY,
  client_last_name VARCHAR(60),
  bride_name VARCHAR(60),
  groom_name VARCHAR(60),
  client_address_street VARCHAR(60),
  client_address_city VARCHAR(40),
  client_address_state CHAR(2),
  client_address_zip VARCHAR(20),
  client_email VARCHAR(255),
  client_phone VARCHAR(12),
  wedding_date DATE
);

CREATE TABLE venues
(
  venue_id INT PRIMARY KEY,
  venue_name VARCHAR(150),
  venue_address_street VARCHAR(60),
  venue_address_city VARCHAR(40),
  venue_address_state VARCHAR(2),
  venue_address_zip VARCHAR(10),
  venue_contact_first_name VARCHAR(60),
  venue_contact_last_name VARCHAR(60),
  venue_email VARCHAR(255),
  venue_phone VARCHAR(12),
  venue_capacity INT
);

CREATE TABLE employees
(
  employee_id INT PRIMARY KEY,
  employee_name_first VARCHAR(60),
  employee_name_last VARCHAR(60),
  employee_address_street VARCHAR(60),
  employee_address_city VARCHAR(40),
  employee_address_state VARCHAR(2),
  employee_address_zip VARCHAR(10),
  employee_email VARCHAR(255),
  employee_phone VARCHAR(12),
  employee_position VARCHAR(40)
);

CREATE TABLE vendors
(
  vendor_id INT PRIMARY KEY,
  vendor_business_name VARCHAR(255) NOT NULL,
  vendor_category VARCHAR(40),
  vendor_contact_first_name VARCHAR(60),
  vendor_contact_last_name VARCHAR(60),
  vendor_phone VARCHAR(12),
  vendor_email VARCHAR(255)
);

CREATE TABLE appointments
(
  appointment_id INT PRIMARY KEY,
  client_id INT,
  employee_id INT,
  appointment_date DATE,
  appointment_time TIME,
  service_description VARCHAR(255),
  service_location VARCHAR(255),
  FOREIGN KEY (client_id) REFERENCES clients(client_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE wedding
(
  wedding_id INT PRIMARY KEY,
  client_id INT,
  employee_id INT,
  venue_id INT,
  wedding_date DATE,
  FOREIGN KEY (client_id) REFERENCES clients(client_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (venue_id) REFERENCES venues(venue_id)
);

INSERT INTO clients (client_id, client_last_name, bride_name, groom_name, client_address_street, client_address_city, client_address_state, client_address_zip, client_email, client_phone, wedding_date)
VALUES 
  (1, 'Smith', 'Jane', 'John', '123 Assassins Way', 'Asheville', 'NC', '28801', 'JandJSmith@hitman.com', '123-123-1234', '2024-06-01'),  
  (2, 'Lorian', 'Cara', 'Mando', '321 This is the Way lane.', 'Asheville', 'NC', '28806', 'Myrazercrest@bountyhunting.com', '888-232-4565', '2024-06-08'), 
  (3, 'Stark', 'Pepper', 'Tony', '321 Avengers Drive', 'Asheville', 'NC', '28805', 'IronMan@S.H.I.E.L.D.com', '225-476-6626', '2024-06-15'), 
  (4, 'Toadstool', 'Peach', 'Mario', '456 Bowsers Castle Drive', 'Asheville', 'NC', '28804', 'StompingGumbas@MarioBros.com', '678-895-0001', '2024-06-22'); 

INSERT INTO venues (venue_id, venue_name, venue_address_street, venue_address_city, venue_address_state, venue_address_zip, venue_contact_first_name, venue_contact_last_name, venue_email, venue_phone, venue_capacity)
VALUES 
  (123, 'The Smoking Gun', '007 Spies only Rd', 'Asheviile', 'NC', '28801', 'James', 'Bond', 'J.Bond@TheSmokingGun.com', '789-546-2358', 500), 
  (124, 'The Mos Eisley Cantina', '555 Tatooine Desert', 'Asheville', 'NC', '28806', 'Bo-Katan', 'Kryze', 'BoKatan.Kryze@TheMosEisleyCantina.com', '321-564-9897', 250), 
  (125, 'Stark Industries', '365 Avengers Drive', 'Asheville', 'NC', '28805', 'Nick', 'Fury', 'N.Fury@StarkIndustries.com', '213-458-9562', 1000), 
  (126, 'Luigi''s Mansion', '789 Spooky Lane', 'Asheville', 'NC', '28804', 'Luigi', 'Toadstool', 'L.Toadstool@LuigisMansion.com', '258-987-1265', 500);

INSERT INTO employees (employee_id, employee_name_first, employee_name_last, employee_address_street, employee_address_city, employee_address_state, employee_address_zip, employee_email, employee_phone, employee_position) 
VALUES 
  (2405, 'Joe', 'Cool', '478 Chef Lane', 'Asheviile', 'NC', '28801', 'J.Cool@ElegantOccasions.com', '789-564-3254', 'Consultant'), 
  (2406, 'Daisy', 'Flowers', '546 Prickly Cactus Lane', 'Asheville', 'NC', '28806', 'D.Flowers@ElegantOcassions.com', '897-919-2589', 'Consultant'), 
  (2407, 'DJ', 'Love', '789 Dove Way', 'Asheville', 'NC', '28805', 'D.Love@ElegantOcassions.com', '256-321-4897', 'Consultant'), 
  (2408, 'Abby', 'Shutters', '895 Polaroid Road', 'Asheville', 'NC', '28804', 'A.Shutters@ElegantOcassions.com', '919-528-6432', 'Consultant');

INSERT INTO vendors (vendor_id, vendor_business_name, vendor_category, vendor_contact_first_name, vendor_contact_last_name, vendor_phone, vendor_email)
VALUES 
  (987, 'Joes BBQ Shack', 'Catering', 'Joe', 'Shmoe', '897-564-321', 'JoesBBQShack@gmail.com'), 
  (988, 'Appalachian Chateau Wines & Cheeses', 'Catering', 'Willow', 'Rivers', '589-726-3265', 'ACWC@Yahoo.com'), 
  (989, 'The Silver Spoon 5 Star Cusine', 'Gordon', 'Ramsey', '828-568-9878', 'TheSilverSpoon@Icloud.com'), 
  (990, 'Three Tier Sweets', 'Catering', 'Hazel', 'Fritter', '828-878-9856', '3TierSweets@aol.com'), 
  (991, 'Rosies Floral Design', 'Floral', 'Rosie', 'Vines', '828-789-2564', 'R.Vines@gmail.com'), 
  (992, 'Tina''s Tulips', 'Floral', 'Tina', 'Vasquez', '828-457-5648', 'TinasTulips@Outlook.com'), 
  (993, 'Four Seasons Floral Arrangement', 'Floral', 'Don', 'Smith', '828-713-5689', 'D.Smith@gmail.com'), 
  (994, 'Natures Playground', 'Floral', 'Chad', 'Meadows', '828-285-6598', 'C.Meadows@NaturesPlayground.com'), 
  (995, 'Sound waves', 'Entertainment', 'DJ', 'Shadow', '828-289-4567', 'D.Shadow@SoundWaves.com'),
  (996, 'The Wedding Band', 'Entertainment', 'Billy', 'George', '828-456-2357', 'B.George@yahoo.com'), 
  (997, 'The Moonlit Classical Orchestra', 'Entertainment', 'Arnold', 'Beethoven', '828-658-2569', 'TheMoonlitClassicalOrch@outlook.com'), 
  (998, 'Point & Click', 'Photography', 'Mary', 'Cannon', '828-989-5502', 'M.Cannon@Point&Click.com'), 
  (999, '123 Smile', 'Photography',  'Bob', 'Ross', '828-985-6620', 'B.Ross@123Smile.com'), 
  (1000, 'Memories Photography LLC', 'Photography', 'Brittany', 'Boone', '828-456-9898', 'Memories@gmail.com'), 
  (1001, 'Griffin''s Photo  Booth Rentals', 'Photography', 'Hannah', 'Griffin', '828-321-6549', 'H.Griffin@GriffinsPhoto.com');

INSERT INTO appointments (appointment_id, client_id, employee_id, appointment_date, appointment_time, service_description, service_location)
VALUES 
  (456, 1, 2405, '2024-01-01', '14:00:00', 'Menu approval', 'The Silver Spoon 5 Star Cusine'), 
  (457, 2, 2406, '2024-01-02', '12:00:00', 'Floral Consultation', 'Tina''s Tulips'), 
  (458, 3, 2407, '2024-01-03', '18:00:00', 'DJ Consultation', 'Bring the Bass'),
  (459, 4, 2408, '2024-01-04', '15:00:00', 'Cake Tasting', 'Three Tier Sweets');

INSERT INTO wedding (wedding_id, client_id, employee_id, venue_id, wedding_date) 
VALUES 
  (5000, 1, 2405, 123, '2024-06-01'), 
  (5001, 2, 2406, 124, '2024-06-01');

-- grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON sandbox_jgriffin.*
TO sandbox_jgriffin@localhost;
