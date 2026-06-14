COPY routes
FROM '/home/sanchess/Downloads/SQL/archive/routes.csv'
DELIMITER ','
CSV HEADER;

select COUNT(*) from trucks