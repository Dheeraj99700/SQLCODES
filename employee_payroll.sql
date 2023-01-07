#UC1
CREATE DATABASE payroll_service;
SHOW DATABASES;
#UC2
USE payroll_service;
CREATE TABLE employee_payroll (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  start_date DATE NOT NULL
);
#UC3
INSERT INTO employee_payroll (name, salary, start_date)
VALUES ('Terisa', 40000 , '2022-01-01'),
       ('Charlie', 50000, '2022-02-01'),
       ('Bill', 55000, '2022-03-01'),
       ('Mark', 55000, '2022-03-01');
#UC4
SELECT * FROM employee_payroll;  
#UC5
SELECT salary FROM employee_payroll WHERE start_date BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());
#UC6
ALTER TABLE employee_payroll ADD COLUMN gender VARCHAR(20) AFTER name;
UPDATE employee_payroll SET gender ='F' WHERE name = 'Terisa';
UPDATE employee_payroll SET gender ='M' WHERE name = 'Charlie' or name = 'Bill';
#UC7
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
SELECT AVG(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
SELECT MIN(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
SELECT MAX(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
SELECT COUNT(*) FROM employee_payroll WHERE gender = 'F' group by gender;
#UC8
ALTER TABLE employee_payroll ADD COLUMN phone VARCHAR(20) AFTER name ;
ALTER TABLE employee_payroll ADD COLUMN address VARCHAR(255) AFTER phone;
ALTER TABLE employee_payroll ADD COLUMN department VARCHAR(255) NOT NULL DEFAULT 'General' AFTER address;
#UC9
ALTER TABLE employee_payroll ADD COLUMN deductions DECIMAL(10,2) AFTER salary;
ALTER TABLE employee_payroll ADD COLUMN taxable_pay DECIMAL(10,2) AFTER deductions;
ALTER TABLE employee_payroll ADD COLUMN income_tax DECIMAL(10,2) AFTER taxable_pay;
ALTER TABLE employee_payroll ADD COLUMN net_pay DECIMAL(10,2) AFTER income_tax;
#UC10
Insert INTO employee_payroll
(name, department, gender, salary, deductions, taxable_pay, income_tax, net_pay, start_date) VALUES
('Terisa', 'Marketting', 'F', 3000000.00, 1000000.00, 2000000.00, 500000.00, 1500000.00, '2018-01-03' );
UPDATE employee_payroll SET department ='Sales' WHERE name = 'Terisa' and id = 1;
#SELECT * FROM employee_payroll
#describe employee_payroll;
#UC11
show databases;
use payroll_service;
create table Employee (Emp_ID int not null auto_increment, Emp_Name varchar(45) not null, Gender varchar(10) not null, 
DOJ date not null, Department varchar(45) not null, Salary double not null, primary key (Emp_ID));
insert into Employee (Emp_Name, Gender, DOJ, Department, Salary) values ("Ram", "M", '2020-11-21', "IT", 180000), 
("Shyam", "M", '2020-04-12', "IT", 150000000), ("Liza", "F", '2020-08-21', "Marketing", 1200000),
("Penny", "F", '2020-01-20', "Marketing", 100000);
select * from Employee;
create table Employee_Department (Dept_ID int not null primary key, Department varchar(45) not null,
 Designation varchar(45) not null, foreign key (Dept_ID) references Employee(Emp_ID));
 insert into Employee_Department (Dept_ID, Department, Designation) values (1, "IT", "Developer"), (2, "IT", "Developer"),
 (3, "Marketing", "Executive"), (4, "Marketing", "Executive");
 select * from Employee_Department;
select sum(salary) from payroll_service.employee where gender = 'F' group by gender;
select sum(salary) from payroll_service.employee where gender = 'M' group by gender;
select avg(salary) from payroll_service.employee;
select min(salary) from payroll_service.employee;
select max(salary) from payroll_service.employee;
select count(salary) from payroll_service.employee;


#UC12
select * from employee;
select * from employee_department;
select salary from employee where Emp_Name='Ram';
select * from employee where DOJ between CAST('2020-07-01' AS DATE)AND DATE(NOW());












 


       
