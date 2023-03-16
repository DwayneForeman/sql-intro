/*

Group By
In the group_by.sql file, write out the code for the following problems:

These questions reference the invoice, track and album tables.

-- Find the sum of totals in the invoice table grouped by billing_state.

-- Find the average track length (in milliseconds) by album. Order the table by the averages.

Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.


*/


SELECT SUM(total) FROM Invoice
GROUP BY billing_state;


SELECT SUM(milliseconds)/COUNT(milliseconds) FROM track
GROUP BY album_id
ORDER BY SUM(milliseconds)/COUNT(milliseconds);


SELECT COUNT(album_id) 
FROM album 
WHERE artist_id IN (8, 22)
GROUP BY artist_id;


