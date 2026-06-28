-- Amostra dos dados
select * 
from drivers
limit 5;

select booking_type
from loads
limit 10;

select *
from customers 
limit 5;

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

-- between 
select first_name, last_name, license_number, license_state, home_terminal, years_experience 
from drivers 
where date_of_birth between '1980-01-01' and '1990-01-01' and years_experience > 10;

-- in

select *
from loads 
where booking_type in ('Spot', 'Contract');

-- Like

-- Dados com final A
select first_name, last_name, hire_date 
from drivers
where first_name like '%a';

-- Dados que contenham R em qualquer parte do texto
select customer_id, customer_name, customer_type
from customers 
where customer_name like '%r%';

-- Dados que comecem com um caractere e terminem com outro específico
select customer_id, customer_name, customer_type, credit_terms_days, account_status
from customers 
where customer_name like 'm%w';

-- Dados que contenham um núemro x caracteres específicos, mas pode ter qualquer outro em outra posição.
select first_name, last_name, hire_date
from drivers 
where first_name like '_atricia';

-- Dados que terminem com in, porém que tenham exatamente 4 caracteres antes
select first_name, last_name, hire_date
from drivers
where last_name like '____in'

-- Selecionando registros que terminem com um caractere depois do 'e', mas pode ter qualquer carctaeres
-- e em qualquer quantidade antes do 'e'
select first_name, license_number, license_state, home_terminal, employment_status
from drivers 
where home_terminal like '%e_'


-- ORDENANDO RESULTADOS
- O padrão é ordenar ascendentemente. Ordena os resultados com base em uma coluna.
select customer_name, contract_type, contract_start_date
from customers
where customer_type = 'Contract'
ORDER BY customer_type ASC, contract_start_date DESC
