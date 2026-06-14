-- Amostra dos dados
select * 
from drivers
limit 2;

--- Colunas específicas
select 
origin_city, origin_state, destination_city, destination_state
from routes
limit 2;

select *
from routes
limit 3;

-- Utilizando operadores 

select customer_id, route_id, revenue 
from loads 
where revenue <= 5000;

select customer_id, route_id, pieces, load_id, revenue
from loads 
where pieces > 10 and revenue > 1500;

select first_name, last_name, hire_date
from drivers
where hire_date > '2015-01-01' and termination_date is NULL;

select first_name, last_name, license_number, license_state, home_terminal, years_experience 
from drivers 
where date_of_birth between '1980-01-01' and '1990-01-01' and years_experience > 10;