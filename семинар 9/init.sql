CREATE TABLE demographics (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    race VARCHAR(50)
);

INSERT INTO demographics (id, name, birthday, race)
VALUES
(1, 'Alice', '1990-01-01', 'Asian'),
(2, 'Bob', '1985-05-12', 'Caucasian'),
(3, 'Charlie', '2000-07-19', 'African');


CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price FLOAT,
    stock INT,
    weight FLOAT,
    producer VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO products (id, name, price, stock, weight, producer, country)
VALUES
(1, 'Rice', 10.5, 100, 1000, 'LocalFarm', 'USA'),
(2, 'Flour', 5.2, 50, 500, 'GlobalMill', 'Canada'),
(3, 'Sugar', 8.8, 70, 2000, 'SweetCo', 'Brazil');

CREATE TABLE repositories (
    project VARCHAR(50),
    commits INT,
    contributors INT,
    address VARCHAR(100)
);

INSERT INTO repositories (project, commits, contributors, address)
VALUES
('Bitcoin', 7, 5, '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa'),
('Ethereum', 8, 10, '0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe'),
('Cardano', 5, 8, 'addr1qxxhrnsyjluhzqhjfk4uw7q5n5jrmwn26');
CREATE TABLE names (
    id INT PRIMARY KEY,
    prefix VARCHAR(10),
    first VARCHAR(50),
    last VARCHAR(50),
    suffix VARCHAR(10)
);

INSERT INTO names (id, prefix, first, last, suffix)
VALUES
(1, 'Dr.', 'Alice', 'Smith', 'PhD'),
(2, 'Mr.', 'Bob', 'Johnson', NULL),
(3, '', 'Charlie', 'Brown', 'Jr.');
CREATE TABLE encryption (
    md5 VARCHAR(32),
    sha1 VARCHAR(40),
    sha256 VARCHAR(64)
);

INSERT INTO encryption (md5, sha1, sha256)
VALUES
('d41d8cd98f00b204e9800998ecf8427e', '2fd4e1c67a2d28fced849ee1bb76e7391b93eb12', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855');