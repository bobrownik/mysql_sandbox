CREATE TABLE users (
	user_id Int NOT NULL,
    city VarChar(255),
    email Text,
    PRIMARY KEY (user_id)
);

CREATE TYPE status AS ENUM ('complete', 'cancelled');

CREATE TABLE trades (
	order_id Int NOT NULL,
    user_id Int NOT NULL,
    price Float,
    quantity Int,
    symbol Text,
    status status,
    PRIMARY KEY (order_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Feeding data
INSERT INTO users VALUES
	(1, 'NY', 'user_1@test.com'),
    (2, 'London', 'user_2@test.com'),
    (3, 'Moscow', 'user_3@test.com'),
    (4, 'Kiev', 'user_4@test.com'),
    (5, 'Rome', 'user_5@test.com'),
    (6, 'Paris', 'user_6@test.com');

INSERT INTO trades VALUES
(1, 1, 123.45, 1,'Foo', 'complete'),
(2, 2, 345.5, 2,'Bar', 'complete'),
(3, 3, 56765.4, 1, 'FooBar', 'cancelled'),
(4, 3, 1.88, 10, 'BarFoo', 'complete'),
(5, 4, 1.45, 2,'New', 'complete'),
(6, 5, 23.00, 7, 'Item', 'complete'),
(7, 6, 123.45, 100, 'Foo', 'complete'),
(8, 4, 345.5, 1, 'Bar', 'complete'),
(9, 3, 54.4, 2, 'FooBar', 'cancelled'),
(10, 2, 1.88, 3, 'BarFoo', 'complete'),
(11, 3, 1.45, 4, 'New', 'complete'),
(12, 4, 23.00, 4, 'Item', 'complete'),
(13, 5, 23.00, 4, 'Item', 'complete'),
(14, 1, 23.00, 4, 'Item', 'complete'),
(15, 2, 23.00, 4, 'Item', 'complete'),
(16, 1, 23.00, 4, 'Item', 'complete');
