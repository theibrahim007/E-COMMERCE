# E-COMMERCe
# E-Commerce Database Project

## Database ER Diagram

Here is the Entity Relationship (ER) diagram for our e-commerce database:

![ER Diagram](ER_Diagram.png)

### Table Details

| Table | Description |
|-------|-------------|
| User | Stores user account information with UserId as primary key |
| Product | Contains product details (name, price, image, description) |
| Order | Holds order information (Order Id, quantity, total amount, shipping total) |
| Payment | Manages payment status for each order |
| Cart Item | Tracks items added to the shopping cart |
| Recommended Product | Stores product recommendations linked to users |

### How to Use This Database

1. Run the `basedata.sql` file to set up the database
2. Import the ER diagram for visual reference
3. Start building your e-commerce application!
