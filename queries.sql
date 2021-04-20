-- write your queries here

Select *
FROM owners
LEFT JOIN vehicles
On owners.id = vehicles.owner_id


Select first_name, last_name, COUNT(*)
from owners
right JOIN vehicles
on owners.id = vehicles.owner_id
GROUP by owners.first_name, owners.last_name
order by count

SELECT first_name, last_name, round(avg(price)) as average_price,count(*)
from owners
right join vehicles
on owners.id = vehicles.owner_id
group by first_name, last_name 
having count(*) > 1 and avg(price)>10000
order by first_name desc