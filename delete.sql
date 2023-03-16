/*

Delete
In the delete.sql file, write out the code for the following problems:

Deleting is DANGEROUS!

Always do a select before a delete to make sure you get back exactly what you want and only what you want to delete!

Since we cannot delete anything from the pre-defined tables (foreign key restraints), let’s go make our own tables in bit.io! (Technically, you can create tables in the Postgres Sandbox too, but let’s practice with bit.io.)

# Open up the bit.io DB you set up during the demo.

Create a table called animals that has 4 columns: id - serialized integer that’s the primary key, name - can be any data type that holds strings, type - also for strings, and age which will be a whole number.

Next, run the commented code provided in delete.sql to insert some data into your table.

-- Try selecting from animals to confirm that everything worked.

-- Delete all ‘lion’ entries from the table.

-- Delete all animals whose names start with “M”.

Delete all entries whose age is less than 9.

Push to GitHub
When you have completed the questions: add, commit, and push your work to GitHub.


*/


CREATE TABLE animals (
name VARCHAR(255),
type VARCHAR(255),
age integer
)


INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
      ('Jerry', 'mouse', 4),
      ('Marty', 'zebra', 10),
      ('Gloria', 'hippo', 8),
      ('Alex', 'lion', 9),
      ('Melman', 'giraffe', 15),
      ('Nala', 'lion', 2),
      ('Marie', 'cat', 1),
      ('Flounder', 'fish', 8);


DELETE FROM animals
WHERE type = 'lion';

DELETE FROM animals
WHERE name = 'M%';

DELETE FROM animals
WHERE age < 9;
