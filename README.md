# Car Dealership using PostgreSQL

I created an Entity Relationship Diagram (ERD) and used PostgreSQL to create a database for a fake car dealership.

## ERD Thought Process
I created 8 different tables. Here's my understanding of the relationship between each table:

Customer - Purchase_Invoice (and Purchase_History) - one to many
- A single customer can purchase many cars, but a car can't be purchased by many customers
- The same logic applies to the Purchase_History.


Customer - Service_Invoice - one to many
- A customer can purchase several services for their car, but only one service invoice can belong to one customer
- The same logic applies to the Service_History.


Sales_Staff- Purchase_Invoice - one to many
 - A salesman can sell many cars but each invoice can only be sold by one salesman
  - The same logic applies to the Purchase_History.


Mechanic_Staff- Service_Invoice - many to many
- Several mechanics can work on several different cars.
- The same logic applies to the Service_History.


Car_Inventory- Purchase_Invoice - one to one
- One car can only be purchased once and one invoice can only belong to one car.
- The same logic applies to the Purchase_History.


Car_Inventory- Service_Invoice - one to one
- One car can only have a single service invoice, and one invoice only belongs to one car.
- The same logic applies to the Service_History.


## License
Please direct any questions or comments to [Andre](mailto:aalonardo@gmail.com).
