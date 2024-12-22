CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,                  -- Auto-incrementing primary key
    order_id INT NOT NULL,                             -- Foreign key to Orders table
    product_id INT NOT NULL,                           -- Foreign key to Products table
    quantity INT NOT NULL,                             -- Quantity of the product in the order
    price DECIMAL(10, 2) NOT NULL,                     -- Price per unit
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);




