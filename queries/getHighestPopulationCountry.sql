-- Write the SQL Query to know which is the country with the highest population number. Good luck!

select name, population
from country
where population = (
select max(population)
from (
select name, population
from country ) as t)