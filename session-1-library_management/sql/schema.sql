CREATE TABLE Address (
    id BIGINT PRIMARY KEY,
    address_line_1 VARCHAR(255),
    address_line_2 VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code VARCHAR(20),
    phone_number VARCHAR(20),
    latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE Subscription_Model (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    allowed_limit INT,
    cost INT
);

CREATE TABLE Person (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address_id BIGINT,
    sub_id INT,
    FOREIGN KEY (address_id) REFERENCES Address(id),
    FOREIGN KEY (sub_id) REFERENCES Subscription_Model(id)
);

CREATE TABLE Roles (
    id BIGINT PRIMARY KEY,
    role_type VARCHAR(50)
);

CREATE TABLE person_role (
    role_id INT,
    person_id INT,
    PRIMARY KEY (role_id, person_id),
    FOREIGN KEY (role_id) REFERENCES Roles(id),
    FOREIGN KEY (person_id) REFERENCES Person(id)
);

CREATE TABLE Library (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    address_id BIGINT,
    FOREIGN KEY (address_id) REFERENCES Address(id)
);

CREATE TABLE library_person (
    library_id INT,
    person_id INT,
    PRIMARY KEY (library_id, person_id),
    FOREIGN KEY (library_id) REFERENCES Library(id),
    FOREIGN KEY (person_id) REFERENCES Person(id)
);

CREATE TYPE book_status AS ENUM ('available', 'checked_out', 'reserved', 'lost');

CREATE TABLE Book (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    isbn VARCHAR(20),
    genre VARCHAR(50),
    library_id INT,
    published_date DATE,
    book_rating FLOAT,
    book_status book_status,
    FOREIGN KEY (library_id) REFERENCES Library(id)
);

CREATE TABLE Issue_Records (
    id INT PRIMARY KEY,
    issued_by BIGINT,
    borrowed_by BIGINT,
    issue_date DATE,
    book_id INT,
    return_due_date DATE,
    FOREIGN KEY (issued_by) REFERENCES Person(id),
    FOREIGN KEY (borrowed_by) REFERENCES Person(id),
    FOREIGN KEY (book_id) REFERENCES Book(id)
);