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
SELECT CONCAT( emp_lastname, ' ', emp_firstname) AS 'Employé' FROM gescom_afpa.employees

SELECT CONCAT( emp_lastname, ' ', emp_firstname) AS 'Employé' 
FROM gescom_afpa.employees
WHERE NOT EXISTS ( SELECT emp_lastname FROM gescom_afpa.employees WHERE emp_superior_id = emp_id)
ORDER BY emp_lastname ASC;