-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
select sum(cost) from PETRESCUE;

-- Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
select sum(cost) as SUM_OF_COST from PETRESCUE;

-- Query A3: Enter a function that displays the maximum quantity of animals rescued.
select max(quantity) from PETRESCUE;

-- Query A4: Enter a function that displays the average cost of animals rescued.
select avg(cost) from PETRESCUE;

-- Query A5: Enter a function that displays the average cost of rescuing a dog.
select avg(cost/quantity) from PETRESCUE
where animal = 'Dog';

-- Query B1: Enter a function that displays the rounded cost of each rescue.
select round(cost) from PETRESCUE;

-- Query B2: Enter a function that displays the length of each animal name.
select length(animal) from PETRESCUE;

-- Query B3: Enter a function that displays the animal name in each rescue in uppercase.
select ucase(animal) as ANIMAL, sum(quantity) as QUANTITY_RESCUED from PETRESCUE
group by animal
order by animal asc;
-- Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.
select distinct ucase(animal) from PETRESCUE;

-- Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
select * from PETRESCUE
where lcase(animal) = 'cat';

-- Query C1: Enter a function that displays the day of the month when cats have been rescued.
select day(rescuedate) from PETRESCUE where animal = 'Cat';

-- Query C2: Enter a function that displays the number of rescues on the 5th month.
select sum(quantity) from PETRESCUE where month(rescuedate) = '05';

-- Query C3: Enter a function that displays the number of rescues on the 14th day of the month.
select sum(quantity) from PETRESCUE where day(rescuedate) = '14';

-- Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
select (rescuedate + 3 days) from PETRESCUE;

-- Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.
select (current date - rescuedate) from PETRESCUE;