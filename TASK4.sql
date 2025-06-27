DROP TABLE Customer;
CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age int
);

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age)
VALUES (1, 'Shubham', 'Thakur', 'India','23'),
       (2, 'Aman ', 'Chopra', 'Australia','21'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24'),
       (4, 'Aditya', 'Arpan', 'Austria','21'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22');
       
       1) SQL MIN () FUNCTION 
       SELECT MIN(Age) FROM Customer
       GROUP BY Country;
       
       2) SQL MAX() FUNCTION
       SELECT Max(Age) FROM Customer
       HAVING MAX(Age)>22;
       
       3) SQL SUM() FUNCTION
       a) USING GROUP BY
       SELECT SUM(Age) FROM Customer
       GROUP BY CustomerName
       ORDER BY COUNT(Age) DESC;
       
       b) USE HAVING
       SELECT SUM(Age) FROM Customer
       HAVING SUM(Age)>20;
       
       4) SQL AVG() FUNCTION
       a) USING GROUP BY
       SELECT AVG(Age) FROM Customer
       GROUP BY Country;
       
       b) USe HAVING
       SELECT AVG(Age) FROM Customer
       GROUP BY Country
       HAVING AVG(Age) >22;
       
       5) SQL COUNT() FUNCTION
       a) USING GROUP BY
       SELECT COUNT(Country) FROM Customer
       GROUP BY Age;
       
       b) USE HAVING
       SELECT COUNT(Country) FROM Customer
       GROUP BY CustomerName
       HAVING COUNT(Country)='Australia';
       