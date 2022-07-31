DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS sales_staff CASCADE;
CREATE TABLE sales_staff (
    sales_staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

DROP TABLE IF EXISTS mechanic_staff CASCADE;
CREATE TABLE mechanic_staff (
    mechanic_staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

DROP TABLE IF EXISTS car_inventory CASCADE;
CREATE TABLE car_inventory (
    VIN SERIAL PRIMARY KEY,
    _year INTEGER,
    make VARCHAR(100),
    model VARCHAR(100),
    new BOOLEAN,
    miles INTEGER,
    price DECIMAL(12,2)
);

DROP TABLE IF EXISTS purchase_invoice CASCADE;
CREATE TABLE purchase_invoice (
    purchase_invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    VIN INTEGER,
    sales_staff_id INTEGER,
    _date DATE,
    payment_type VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (VIN) REFERENCES car_inventory (VIN) ON DELETE CASCADE,
    FOREIGN KEY (sales_staff_id) REFERENCES sales_staff (sales_staff_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS service_invoice CASCADE;
CREATE TABLE service_invoice (
    service_invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    VIN INTEGER,
    mechanic_staff_id INTEGER,
    _date DATE,
    price DECIMAL(8,2),
    payment_type VARCHAR(100),
    parts_required BOOLEAN,
    FOREIGN KEY (mechanic_staff_id) REFERENCES mechanic_staff (mechanic_staff_id) ON DELETE CASCADE,    
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (VIN) REFERENCES car_inventory (VIN) ON DELETE CASCADE
);

DROP TABLE IF EXISTS purchase_history CASCADE;
CREATE TABLE purchase_history (
    purchase_history SERIAL PRIMARY KEY,
    customer_id INTEGER,
    VIN INTEGER,
    sales_staff_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (VIN) REFERENCES car_inventory (VIN) ON DELETE CASCADE,
    FOREIGN KEY (sales_staff_id) REFERENCES sales_staff (sales_staff_id) ON DELETE CASCADE
);  

DROP TABLE IF EXISTS service_history CASCADE;
CREATE TABLE service_history (
    customer_id INTEGER,
    VIN INTEGER,
    mechanic_staff_id INTEGER,
    service_invoice_id INTEGER,
    FOREIGN KEY (mechanic_staff_id) REFERENCES mechanic_staff (mechanic_staff_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (VIN) REFERENCES car_inventory (VIN) ON DELETE CASCADE,
    FOREIGN KEY (service_invoice_id) REFERENCES service_invoice (service_invoice_id) ON DELETE CASCADE
);
