/*


Invoice
In the invoice.sql file, write out the code for the following problems:

-- Count (MEANS COUNT(*) how many orders were made from the USA.

-- Find/Select the largest order total amount.

-- Find the smallest order total amount.

-- Find all orders bigger than $5.

-- Count how many orders were smaller than $5.

-- Count how many orders were in CA, TX, or AZ (use IN).

-- Get the average total of the orders.

-- Get the total sum of the orders.

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.

-- Delete the invoice with an invoice_id of 1.


*/

SELECT COUNT(*) FROM Invoice
WHERE billing_country ='USA';

SELECT MAX(total) FROM Invoice;

SELECT MIN(total) FROM Invoice;

SELECT * FROM Invoice
WHERE total > 5;

SELECT * FROM Invoice
WHERE total < 5;

SELECT COUNT(*) FROM Invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT SUM(total)/COUNT(total) FROM Invoice; 

SELECT SUM(total) FROM Invoice; 

UPDATE Invoice 
SET total = 24 
WHERE invoice_id = 5;

DELETE 
FROM Invoice
WHERE invoice_id = 1;