/*

Update
In the update.sql file, write out the code for the following problems:

These questions reference both the customer table and track table.

-- Find all customers with fax numbers and set those numbers to null.

-- Find all customers with no company (null) and set their company to “Self”.

-- Find the customer Julia Barnett and change her last name to Thompson.

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.


*/


UPDATE customer 
SET fax = NULL
WHERE fax IS NOT NULL;

UPDATE customer 
SET company = 'Self'
WHERE company = NULL;

UPDATE customer
SET last_name = 'Thompson'
WHERE last_name = 'Barnett';

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = 3 AND composer = NULL;


