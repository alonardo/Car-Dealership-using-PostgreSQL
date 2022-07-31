CREATE OR REPLACE FUNCTION add_customer(
    _customer_id INTEGER,
    _first_name VARCHAR(100),
    _last_name VARCHAR(100),
    _email VARCHAR(100)  
)
RETURNS VOID
AS $MAIN$
BEGIN
    INSERT INTO customer (customer_id, first_name, last_name, email)
    VALUES(_customer_id,_first_name,_last_name,_email);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_customer(10,'Rob', 'Ford', 'toronto@gmail.com')

SELECT * FROM customer