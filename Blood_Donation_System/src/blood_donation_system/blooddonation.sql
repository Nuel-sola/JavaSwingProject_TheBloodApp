SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS blooddonation;

USE blooddonation;

CREATE TABLE IF NOT EXISTS available_pac (
  name varchar(250) NOT NULL,
  available int(11) NOT NULL
);

INSERT INTO available_pac (name, available) VALUES
('A+', 23),
('B+', 21),
('AB+', 39),
('O+', 31),
('A-', 18),
('B-', 35),
('AB-', 40),
('O-', 24);

CREATE TABLE IF NOT EXISTS donor (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(230) NOT NULL,
  bloodgroup varchar(250) DEFAULT NULL,
  sex varchar(240) NOT NULL,
  age int(11) NOT NULL,
  address varchar(250) NOT NULL,
  phoneno bigint(20) DEFAULT NULL,
  date date NOT NULL,
  username varchar(250) DEFAULT NULL,
  password varchar(250) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO donor (name, bloodgroup, sex, age, address, phoneno, date, username, password) VALUES
('pooja Rupanwar', 'A+', 'Female', 20, 'satara', 2143563432, '2020-03-03', 'pooja', '1234'),
('Priya More', 'O+', 'Female', 30, 'Nagpur', 4356433265, '2021-03-08', 'priya', 'priya12'),
('Anmol Kale', 'B+', 'Male', 40, 'Gadital,Nashik', 6578893421, '2021-03-08', 'anmol', 'Anmol5'),
('kajol pawar', 'B+', 'Female', 20, 'Nagar', 3465329856, '2021-03-08', 'kajol', 'pawar1'),
('vikas koyale', 'A+', 'Male', 50, 'Indore', 3443567856, '2021-03-08', 'koyale', 'koyale'),
('Chetan Salunkhe', 'A+', 'Male', 20, 'Ram Nagar', 2354763456, '2021-03-09', 'chetan', 'chetan12');


CREATE TABLE IF NOT EXISTS donorhistory (
  bloodtype varchar(250) NOT NULL,
  user varchar(250) NOT NULL,
  date date NOT NULL,
  time time DEFAULT NULL
);

INSERT INTO donorhistory (bloodtype, user, date, time) VALUES
('A+', 'pooja', '2020-03-03', '13:42:47'),
('O+', 'priya', '2021-03-08', '13:55:34'),
('A+', 'pooja', '2021-03-08', '13:58:09'),
('B+', 'kajol', '2021-03-08', '22:53:34'),
('A+', 'koyale', '2021-03-08', '23:05:55'),
('A+', 'chetan', '2021-03-09', '13:54:29');

CREATE TABLE IF NOT EXISTS purchaser (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(260) DEFAULT NULL,
  mobile bigint(20) DEFAULT NULL,
  address varchar(250) NOT NULL,
  user varchar(259) NOT NULL,
  password varchar(250) NOT NULL,
  date date NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO purchaser (name, mobile, address, user, password, date) VALUES
('Sanchita Joshi', 4576349432, 'Kolhapur', 'sanchita', 'sanchita', '2021-03-08'),
('Reeya Somvanshi', 5476435643, 'Shivaji Nagar', 'reeya', 'reeya', '2021-03-08'),
('Pravin Nagre', 5678343265, 'Indore', 'nagare', 'nagare', '2021-03-08'),
('Nisha More', 1234564312, 'Nagpur', 'nisha', '1234', '2021-03-08'),
('Neha Ghadge', 3254763456, 'Rajgad', 'neha', 'neha', '2021-03-09');


COMMIT;