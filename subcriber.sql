CREATE TABLE subcriber (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    birthday DATE,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
