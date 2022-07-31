INSERT INTO customer(first_name, last_name, email) VALUES
('Eli', 'Sunday', 'elisunday@gmail.com');

INSERT INTO customer(first_name, last_name, email) VALUES
('Michael', 'Corleone', 'michaelcorleone@gmail.com');

INSERT INTO customer(first_name, last_name, email) VALUES
('James', 'Bond', '007@gmail.com');

INSERT INTO customer(first_name, last_name, email) VALUES
('Hannibal', 'Lecter', 'feedme@gmail.com');

INSERT INTO customer(first_name, last_name, email) VALUES
('Anakin', 'Skywalker', 'skywalker@gmail.com');

INSERT INTO sales_staff(first_name, last_name) VALUES
('Daniel', 'Plainview');

INSERT INTO sales_staff(first_name, last_name) VALUES
('Art', 'Vandelay');

INSERT INTO sales_staff(first_name, last_name) VALUES
('Dr. Mantis', 'Tobboggan');

INSERT INTO sales_staff(first_name, last_name) VALUES
('Jerry', 'Seinfeld');

INSERT INTO sales_staff(first_name, last_name) VALUES
('Cosmo', 'Kramer');

INSERT INTO mechanic_staff (first_name, last_name) VALUES
('Charlie', 'Kelly');

INSERT INTO mechanic_staff (first_name, last_name) VALUES
('Ronald', 'McDonald');

INSERT INTO mechanic_staff (first_name, last_name) VALUES
('Dennis', 'Reynolds');

INSERT INTO mechanic_staff (first_name, last_name) VALUES
('Rickety', 'Cricket');

INSERT INTO mechanic_staff (first_name, last_name) VALUES
('Liam', 'McPoyle');

INSERT INTO car_inventory (_year, make, model, new, miles, price) VALUES
(1997, 'Honda', 'Civic', false, 150000, 2000)

INSERT INTO car_inventory (_year, make, model, new, miles, price) VALUES
(2002, 'Toyota', 'Camry', false, 175000, 2500)

INSERT INTO car_inventory (_year, make, model, new, miles, price) VALUES
(2005, 'Toyota', 'Matrix', true, 72000, 6000)

INSERT INTO car_inventory (_year, make, model, new, miles, price) VALUES
(2018, 'Subaru', 'Outback', false, 100000, 25000)

INSERT INTO car_inventory (_year, make, model, new, miles, price) VALUES
(2022, 'Ford', 'F150', true, 50, 60000)

INSERT INTO purchase_invoice (customer_id, VIN, sales_staff_id, _date, payment_type) VALUES
(1, 1, 1, '1990-02-26', 'check')

INSERT INTO purchase_invoice (customer_id, VIN, sales_staff_id, _date, payment_type) VALUES
(2, 2, 2, '1992-03-16', 'bitcoin')

INSERT INTO purchase_invoice (customer_id, VIN, sales_staff_id, _date, payment_type) VALUES
(3, 3, 3, '1991-07-14', 'cash')

INSERT INTO purchase_invoice (customer_id, VIN, sales_staff_id, _date, payment_type) VALUES
(4, 4, 4, '1980-11-01', 'check')

INSERT INTO purchase_invoice (customer_id, VIN, sales_staff_id, _date, payment_type) VALUES
(5, 5, 5, '2006-05-26', 'check')

INSERT INTO service_invoice (customer_id, mechanic_staff_id, VIN, _date, price, payment_type, parts_required) VALUES
(1, 1, 1, '1998-01-18', 850.00, 'credit', true)

INSERT INTO service_invoice (customer_id, mechanic_staff_id, VIN, _date, price, payment_type, parts_required) VALUES
(2, 2, 2, '1993-09-02', 1850.00, 'credit', true)

INSERT INTO service_invoice (customer_id, mechanic_staff_id, VIN, _date, price, payment_type, parts_required) VALUES
(3, 3, 3, '2020-03-18', 49.99, 'cash', false)

INSERT INTO service_invoice (customer_id, mechanic_staff_id, VIN, _date, price, payment_type, parts_required) VALUES
(4, 4, 4, '1950-08-22', 19.99, 'cash', false)

INSERT INTO service_invoice (customer_id, mechanic_staff_id, VIN, _date, price, payment_type, parts_required) VALUES
(5, 5, 5, '2022-07-25', 49.99, 'credit', true)

INSERT INTO service_history (VIN, customer_id, mechanic_staff_id, service_invoice_id) VALUES
(1, 1, 1, 1)

INSERT INTO service_history (VIN, customer_id, mechanic_staff_id, service_invoice_id) VALUES
(2, 2, 2, 2)

INSERT INTO service_history (VIN, customer_id, mechanic_staff_id, service_invoice_id) VALUES
(3, 3, 3, 3)

INSERT INTO service_history (VIN, customer_id, mechanic_staff_id, service_invoice_id) VALUES
(4, 4, 4, 4)

INSERT INTO service_history (VIN, customer_id, mechanic_staff_id, service_invoice_id) VALUES
(5, 5, 5, 5)
