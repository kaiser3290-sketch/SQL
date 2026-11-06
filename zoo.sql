--You will build a SQL script that creates a zoo_animal table, inserts eight animals with their species, age, and weight, and then uses aggregate functions to explore the data. Working through five parts, you will build and view the table, find unique species with SELECT DISTINCT, count total and filtered rows with COUNT(), total and average numeric columns with SUM() and AVG(), and finally combine all four aggregate functions in one query for a complete zoo summary.

create table zoo_animal(
    animal_id int,
    name_ varchar(255),
    weight_ decimal(2,2),
    species_ varchar(255),
    age_ int
);

insert into zoo_animal(
    animal_id,
    name_,
    weight_,
    species_,
    age_
)
values
(1, 'Lion', 190.50, 'Mammal', 8),
(2, 'Elephant', 1200.00, 'Mammal', 15),
(3, 'Parrot', 1.20, 'Bird', 3),
(4, 'Tiger', 220.00, 'Mammal', 10),
(5, 'Parrot', 1.50, 'Bird', 5),
(6, 'Crocodile', 450.00, 'Reptile', 20),
(7, 'Lion', 200.00, 'Mammal', 12),
(8, 'Penguin', 25.50, 'Bird', 5);

select * from zoo_animal;

select DISTINCT species_ from zoo_animal;

select DISTINCT name_ from zoo_animal;

select COUNT(animal_id) from zoo_animal;

select COUNT(name_) from zoo_animal;

select SUM(age_) AS total_age from zoo_animal;

select AVG(age_) as age_average from zoo_animal

select MAX(age_) AS maximum_age from zoo_animal;

select MIN(age_) AS minimum_age from zoo_animal;

SELECT
count(animal_id) as animal_count,
sum(age_) as animal_weight,
avg(age_) as avg_of_age
from zoo_animal;
