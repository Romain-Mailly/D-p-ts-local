-- Exercice oto --

DROP DATABASE IF EXISTS oto;

CREATE DATABASE oto;
USE oto;

CREATE TABLE cars (
    car_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    car_type VARCHAR(50) NOT NULL,
    car_condition BOOLEAN NOT NULL
    );
    
CREATE TABLE customers (
    cus_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    car_id INT NOT NULL,
    cus_lastname VARCHAR(50) NOT NULL,
    cus_firstname VARCHAR(50) NOT NULL,
    cus_category BOOLEAN NOT NULL,
    cus_payment BOOLEAN NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
	);
    
CREATE TABLE requirement (
    req_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    car_id INT NOT NULL,
    req_type VARCHAR(50) NOT NULL,
    req_repair BOOLEAN NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
    );
    
CREATE TABLE accessories (
    acc_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    car_id INT NOT NULL,
    acc_sale DECIMAL(12,2) NOT NULL,
    acc_installing BOOLEAN NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
    );
    
CREATE TABLE options (
    opt_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    car_id INT NOT NULL,
    opt_sale DECIMAL(12,2) NOT NULL,
    opt_installing BOOLEAN NOT NULL,
	FOREIGN KEY (car_id) REFERENCES cars(car_id)
    );
    
CREATE TABLE commercial (
    com_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cus_id INT NOT NULL,
    com_name VARCHAR(50)NOT NULL,
    FOREIGN KEY (cus_id) REFERENCES customers(cus_id)
    );

-- Exercice 5



--posts
INSERT INTO gescom_struct.posts
VALUES
(1, 'CEO'),
(2, 'Manager'),
(3, 'Employee');


--employees
INSERT INTO gescom_struct.employees
VALUES
(1, NULL, 1, 'Afonso', 'Florian', '30 Rue de Poulainville', '80000', 'Amiens', 'florian.afonso@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 1),
(2, 1, 2, 'De Sinety', 'Vincent', '30 Rue de Poulainville', '80000', 'Amiens', 'vincent.desinety@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0),
(3, 1, 3, 'Mailly', 'Romain', '30 Rue de Poulainville', '80000', 'Amiens', 'romain.mailly@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0),
(4, 1, 3, 'Lefebvre', 'Rémi', '30 Rue de Poulainville', '80000', 'Amiens', 'remi.lefebvre@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0);


--suppliers
INSERT INTO gescom_struct.suppliers
VALUES
(1, 'Fournisseur 1', 'Amiens', 'FR', '31 Rue de Poulainville', '80000', 'Monsieur X', '0123456789', 'fournisseur1@afpa.fr'),
(2, 'Fournisseur 2', 'Amiens', 'FR', '32 Rue de Poulainville', '80000', 'Monsieur Y', '0123456789', 'fournisseur2@afpa.fr'),
(3, 'Fournisseur 3', 'Amiens', 'FR', '33 Rue de Poulainville', '80000', 'Monsieur Z', '0123456789', 'fournisseur3@afpa.fr');


--categories
INSERT INTO gescom_struct.categories
VALUES
(1, 'Catégorie 1', NULL),
(2, 'Sous-Catégorie 1', 1),
(3, 'Catégorie 2', NULL),
(4, 'Sous-Catégorie 2', 3);


--customers
INSERT INTO gescom_struct.customers
VALUES
(1, 'Bomber', 'Jean', '3 Rue du Casse-croutte', '69069', 'Pain-ville', 'FR', 'jean.bomber@gladalle.fr', '1669696969','JeanBomber69', '2021-07-13', NULL),
(2, 'Némare', 'Jean', '3 Rue du Tibia-cassé', '00000', 'Foot-ville', 'FR', 'jean.némare@cafaitmal.fr', '1000000000','JeanNemaredavoirmal', '2021-07-13', NULL),
(3, 'Jackson', 'Michael', '4 boulevard du Billiejean', '01001', 'Cimetière', 'FR', 'michael.jackson@jsuismort.fr', '1698745632', 'RecussitezmoiSVP', '2021-07-13', NULL);

--orders

INSERT INTO gescom_struct.orders
VALUES
(1, '2021-05-10', '2021-05-10', '2021-05-12', '2021-05-15', 'delivred', 1),
(2, '2021-05-30', '2021-05-30', '2021-06-02', '2021-06-05', 'delivred', 2),
(3, '2021-06-27', '2021-05-10', '2021-06-30', '2021-07-02', 'delivred', 3);