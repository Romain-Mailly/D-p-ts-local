-- Exercice 1 --
SELECT emp_lastname, emp_firstname, emp_children FROM gescom_afpa.employees 
WHERE emp_children > 0 ORDER 
BY emp_children DESC, emp_lastname ASC;


-- Exercice 2 --
SELECT cus_lastname, cus_firstname, cus_countries_id FROM gescom_afpa.customers
WHERE cus_countries_id != "FR";


-- Exercice 3 --
SELECT cus_city, cus_countries_id, cou_name FROM gescom_afpa.customers, gescom_afpa.countries 
WHERE cou_name = 'France' 
ORDER BY cus_city ASC;


-- Exercice 4 --
SELECT cus_lastname, cus_update_date FROM gescom_afpa.customers
WHERE cus_update_date IS NOT NULL ;


-- Exercice 5 --
SELECT cus_id, cus_lastname, cus_firstname, cus_city FROM gescom_afpa.customers
WHERE cus_city LIKE '%divos%' ;


-- Exercice 6 --
SELECT pro_id, pro_name, pro_price FROM gescom_afpa.products
ORDER BY pro_price ASC
LIMIT 1 ;


-- Exercice 7 --
SELECT pro_id, pro_ref, pro_name 
FROM gescom_afpa.products
WHERE NOT EXISTS (SELECT ode_pro_id FROM gescom_afpa.orders_details WHERE ode_pro_id = pro_id) ;


-- Exercice 8 --
SELECT pro_id, pro_ref, pro_color, pro_name, cus_id, cus_lastname, ord_id, ode_id FROM gescom_afpa.orders_details
JOIN gescom_afpa.products ON pro_id = ode_pro_id
JOIN gescom_afpa.orders ON ord_id = ode_ord_id
JOIN gescom_afpa.customers ON cus_id = ord_cus_id
WHERE cus_lastname = "Pikatchien"


-- Exercice 9 -- 
SELECT cat_id, cat_name, pro_name FROM gescom_afpa.categories, gescom_afpa.products
WHERE pro_cat_id = cat_id
ORDER BY cat_name ASC


-- Exercice 10 --
SELECT CONCAT (t1.emp_lastname,' ', t1.emp_firstname) AS employé,CONCAT (t2.emp_lastname,' ', t2.emp_firstname) AS supérieur
from employees as t1
JOIN employees as t2 on t1.emp_superior_id=t2.emp_id
ORDER BY CONCAT (t1.emp_lastname, ' ', t1.emp_firstname) asc


-- Exercice 11 --
SELECT pro_id, pro_name, ((ode_unit_price/100)*ode_discount) AS remise, ode_ord_id AS commande, ode_id as 'ligne commande' from products
JOIN orders_details ON ode_pro_id= pro_id
ORDER BY remise DESC
LIMIT 1


-- Exercice 12 --
SELECT COUNT(cus_countries_id) AS 'Nb clients Canada' FROM gescom_afpa.customers
WHERE cus_countries_id = 'CA';


-- Exercice 13 --
SELECT ode_id, ode_unit_price, ode_quantity, ode_ord_id, ode_pro_id, ord_order_date FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON orders_details.ode_ord_id = orders.ord_id
WHERE ord_order_date LIKE '2020-%-%';

-- Exercice 14 --
SELECT * FROM gescom_afpa.suppliers
WHERE EXISTS (SELECT pro_sup_id FROM gescom_afpa.products WHERE pro_sup_id = sup_id)


-- Exercice 15 --
SELECT SUM((ode_unit_price * ode_quantity) * (1-(ode_discount/100))) FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON ord_id = ode_ord_id
WHERE ord_order_date LIKE '2020-%-%'

-- Exercice 16 --
SELECT ord_id, cus_lastname, ord_order_date, ode_quantity, (ode_unit_price * ode_quantity) AS 'Total' FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON orders.ord_id = orders_details.ode_ord_id 
JOIN gescom_afpa.customers ON customers.cus_id = orders.ord_cus_id
ORDER BY (ode_unit_price * ode_quantity) DESC


-- Exercice 17 --
SELECT AVG((ode_unit_price * ode_quantity) * (1 - (ode_discount/100)))FROM gescom_afpa.orders_details


-- Exercice 18 --
UPDATE products
SET 
pro_price = 90.00,
pro_name = 'Camper'
WHERE pro_id = 12


-- Exercice 19 --
UPDATE products
SET
pro_price = pro_price*(1+(1.1/100))
WHERE pro_cat_id = 25


-- Exercice 20 --
DELETE gescom_afpa.products FROM gescom_afpa.products 
JOIN gescom_afpa.categories ON categories.cat_id = products.pro_cat_id
WHERE  pro_id  NOT IN
(SELECT ode_pro_id from orders_details)
AND cat_name ='Tondeuses électriques'


-- Rôles --
CREATE ROLE IF NOT EXISTS 'marketing'@'localhost';

GRANT INSERT, UPDATE, DELETE
ON gescom_afpa.products, gescom_afpa.categories
TO 'marketing'@'localhost';

GRANT SELECT
ON gescom_afpa.orders, gescom_afpa.orders_details, gescom_afpa.customers
TO 'marketing'@'localhost';