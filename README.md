# Projeto SQL - Análise de Operações Logísticas

## Sobre o Projeto

Este projeto foi desenvolvido como parte dos meus estudos em SQL, modelagem de dados e análise de dados utilizando PostgreSQL e DBeaver.

O objetivo é explorar um banco de dados logístico contendo informações sobre clientes, motoristas, cargas, rotas e viagens, simulando cenários reais encontrados em operações de transporte e supply chain.

O projeto busca desenvolver habilidades fundamentais para atuação em Análise de Dados, incluindo:

* Modelagem relacional
* Criação de tabelas
* Importação de dados CSV
* Consultas SQL
* JOINs
* Agregações
* Análise de indicadores operacionais

---

## Tecnologias Utilizadas

* PostgreSQL
* DBeaver
* Git
* GitHub
* Linux (Keep OS)

---

## Estrutura do Projeto

```text
projeto-sql-logistica/
│
├── data/
│   └── arquivos CSV utilizados
│
├── schema/
│   ├── drivers.sql
│   ├── customers.sql
│   ├── routes.sql
│   ├── loads.sql
│   └── trips.sql
│
├── queries/
│   ├── consultas_basicas.sql
│   ├── joins.sql
│   ├── agregacoes.sql
│   ├── ctes.sql
│   └── window_functions.sql
│
└── README.md
```

---

## Dataset Utilizado

O projeto utiliza um dataset de operações logísticas contendo mais de 85 mil registros distribuídos em diversas tabelas relacionadas.

O conjunto de dados simula uma empresa de transporte rodoviário entre os anos de 2022 e 2024.

### Principais áreas cobertas

* Clientes
* Motoristas
* Rotas
* Cargas
* Viagens
* Consumo de combustível
* Manutenção
* Eventos de entrega

---

## Tabelas Utilizadas

### Drivers

Armazena informações dos motoristas.

**Principais campos:**

* driver_id
* first_name
* last_name
* hire_date
* employment_status
* years_experience

### Customers

Armazena informações dos clientes.

**Principais campos:**

* customer_id
* customer_name
* customer_type
* credit_terms_days
* annual_revenue_potential

### Routes

Contém as rotas de transporte.

**Principais campos:**

* route_id
* origin_city
* destination_city
* typical_distance_miles
* base_rate_per_mile

### Loads

Representa as cargas transportadas.

**Principais campos:**

* load_id
* customer_id
* route_id
* load_date
* revenue
* fuel_surcharge
* load_status

### Trips

Representa a execução das viagens.

**Principais campos:**

* trip_id
* load_id
* driver_id
* truck_id
* dispatch_date
* actual_distance_miles
* average_mpg

---

## Modelo Relacional

```text
CUSTOMERS
    │
    ▼
LOADS
    │
    ▼
TRIPS
    │
 ┌──┴──┐
 ▼     ▼
DRIVERS ROUTES
```

### Relacionamentos Principais

* loads → customers
* loads → routes
* trips → loads
* trips → drivers

---

## Objetivos de Estudo

Durante este projeto estou praticando:

### SQL Básico

* SELECT
* WHERE
* ORDER BY
* LIMIT

### Agregações

* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

### Relacionamentos

* INNER JOIN
* LEFT JOIN

### Consultas Avançadas

* CTEs
* Window Functions
* Rankings
* Métricas de desempenho

---

## Autor

**Lucas Sanches**

Estudante de Dados, Analytics e Business Intelligence.
