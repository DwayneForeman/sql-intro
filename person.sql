/*

Setup
Download the exercise folder from Frodo

Navigate to the folder in your terminal

Run git init inside the folder

Open the folder in VS Code

Run git add and git commit (don’t forget the m flag and a message)

Create a repo on GitHub and connect it to your local repo

Person
In the person.sql file, write out the code for the following problems:

Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

Select all the people in the person table by height from tallest to shortest.

Select all the people in the person table by height from shortest to tallest.

Select all the people in the person table by age from oldest to youngest.

Select all the people in the person table older than age 20.

Select all the people in the person table that are exactly 18.

Select all the people in the person table that are less than 20 and older than 30.

Select all the people in the person table that are not 27 (use not equals).

Select all the people in the person table where their favorite color is not red.

Select all the people in the person table where their favorite color is not red and is not blue.

Select all the people in the person table where their favorite color is orange or green.

Select all the people in the person table where their favorite color is orange, green or blue (use IN).

Select all the people in the person table where their favorite color is yellow or purple (use IN).

*/


CREATE TABLE person (

id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
age INTEGER,
height DECIMAL,
city VARCHAR(40),
favorite_color TEXT

)


INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Mike', 23, 300.5, 'Chicago', 'Red'),
('Kobe', 8, 280.6, 'LA', 'Yellow'),
('Lebron', 6, 305.97, 'Miami', 'Black'),
('Allen', 3, 175, 'Philly', 'Blue'),
('Kyrie', 10, 198, 'Dallas', 'White');

SELECT * FROM person
ORDER BY height;

SELECT * FROM person
ORDER BY age desc;

SELECT * FROM person WHERE AGE > 20;

SELECT * FROM person WHERE AGE = 18;

SELECT * FROM person WHERE AGE < 20 AND AGE < 30;

SELECT * FROM person WHERE AGE != 30;

SELECT * FROM person WHERE favorite_color != 'Red' AND != 'Blue';

SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person WHERE favorite_color IN ('Orange','Green','Blue');

SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');