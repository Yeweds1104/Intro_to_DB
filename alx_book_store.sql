/* Database Name: alx_book_store */

CREATE TABLE Books (
book_id INT PRIMARY KEY NOT NULL,
title VARCHAR(130) NOT NULL,
author_id INT,
price DOUBLE NOT NULL,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
	ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE Authors (
author_id INT PRIMARY KEY NOT NULL,
author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers (
customer_id INT PRIMARY KEY NOT NULL,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) NOT NULL,
address TEXT
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY NOT NULL,
customer_id INT NOT NULL,
order_date DATE NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
	ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE Order_Details (
orderdetailid INT PRIMARY KEY NOT NULL,
order_id INT,
book_id INT,
quantity DOUBLE NOT NULL,
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
	ON DELETE SET NULL
    ON UPDATE CASCADE,
FOREIGN KEY (book_id) REFERENCES Books(book_id)
	ON DELETE SET NULL
    ON UPDATE CASCADE
);
