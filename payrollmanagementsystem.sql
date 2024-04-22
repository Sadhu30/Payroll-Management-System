create database payrollmanagementsystem;
use payrollmanagementsystem;

-- Creating employee table:

create table employee(
employee_id varchar(10) primary key,
first_name varchar(30),
last_name varchar(30),
date_of_birth date,
gender varchar(30),
email varchar(30),
phone_number varchar(30),
address varchar(30),
position varchar(30),
joining_date date,
termination_date date);

-- Inserting values in the employee table:

insert into employee (employee_id,first_name,last_name,date_of_birth,gender,email,phone_number,address,position,joining_date,termination_date)
values
('e0','Sadhana','Sellamuthu','2003-06-30','Female','sadhu@gmail.com','123423452','Palani','Web developer','2024-09-12',null),
('e1','Mathi','Saminathan','1998-11-21','Female','mathi@gmail.com','224356278','Dharapuram','Software engineer','2024-05-12',null),
('e2','Sowmiya','Kuppusamy','2003-02-14','Female','sowmiya@gmail.com','345627228','Karur','Manager','2024-11-10',null),
('e3','Manoj','Eswaran','2003-04-19','Male','manoj@gmail.com','342561746','Dindigul','Java developer','2024-06-05',null),
('e4','Sowmya','Madhavan','2002-12-21','Female','sowmya@gmail.com','432671846','Dindigul','Supervisor','2024-06-07',null),
('e5','Sanjai','Krshinan','2003-05-22','Male','sanjai@gmail.com','324516357','Tiruppur','Java developer','2024-10-09',null),
('e6','Vinothini','Srinivasan','2003-02-09','Female','vino@gmail.com','452647282','Thanjavur','Software engineer','2024-06-11',null),
('e7','Abinaya','Nallathambi','1999-06-21','Female','abi@gmail.com','121345627','Kanchipuram','Web designer','2024-12-14',null),
('e8','Ravi','Ramasamy','2000-07-15','Male','ravi@gmail.com','546374635','Trichy','Python developer','2024-08-15',null),
('e9','Raja','Raman','2001-09-22','Male','raja@gmail.com','847563957','Chennai','Front end developer','2024-07-17',null);


-- Creating payroll table:

create table payroll(
payroll_id varchar(10) primary key,
employee_id varchar(10),
pay_period_start_date date,
pay_period_end_date date,
basic_salary decimal,
overtime_pay decimal,
deductions decimal,
net_salary decimal,
Foreign key (employee_id) references employee(employee_id));

-- Inserting values in the payroll table:

insert into payroll(payroll_id,employee_id,pay_period_start_date,pay_period_end_date,basic_salary,overtime_pay,deductions,net_salary)
values
('p0','e3','2024-06-07','2025-01-07','10000','4500','1000','13500'),
('p1','e7','2024-12-14','2025-05-12','12000','3000','1000','14000'),
('p2','e4','2024-06-08','2025-02-21','15000','5000','2000','18000'),
('p3','e9','2024-07-18','2024-12-18','20000','4000','500','23500'),
('p4','e5','2024-10-10','2024-12-12','13000','2000','3000','12000'),
('p5','e0','2024-09-13','2025-09-13','18000','6000','1000','23000'),
('p6','e8','2024-08-16','2025-08-16','30000','4000','2000','32000'),
('p7','e1','2024-05-14','2025-10-14','16000','2500','1500','17000'),
('p8','e6','2024-06-12','2025-03-13','14000','4000','2300','15700'),
('p9','e2','2024-11-11','2025-09-12','19000','5000','4000','20000');


-- Creating tax table:

create table tax(
tax_id varchar(10) primary key,
employee_id varchar(10),
tax_year year,
taxable_income decimal,
tax_amount decimal,
Foreign key (employee_id) references employee(employee_id)
);

-- Inserting values in tax table:

insert into tax(tax_id,employee_id,tax_year,taxable_income,tax_amount)
values
('t0','e4',2024,16000,2000),
('t1','e8',2024,28000,4000),
('t2','e3',2024,12000,1500),
('t3','e7',2025,10000,3500),
('t4','e0',2024,20000,3000),
('t5','e9',2024,21000,2500),
('t6','e6',2024,13000,2700),
('t7','e2',2025,17000,3000),
('t8','e5',2025,10000,2000),
('t9','e1',2024,13000,4000);


-- Creating financialrecord table:

create table financialrecord(
record_id varchar(10) primary key,
employee_id varchar(10),
record_date date,
description varchar(30),
amount decimal,
record_type varchar(30),
Foreign key (employee_id) references employee(employee_id)
);

-- Inserting values in the financialrecord table:
 
insert into financialrecord(record_id,employee_id,record_date,description,amount,record_type)
values
('r0','e6','2024-12-30','income',15700,'income'),
('r1','e3','2024-12-29','tax',1500,'tax'),
('r2','e9','2024-12-28','expenses',7000,'expenses'),
('r3','e0','2024-12-30','income',23000,'income'),
('r4','e2','2024-12-31','tax',3000,'tax'),
('r5','e1','2024-12-29','expenses',6000,'expenses'),
('r6','e7','2024-12-28','income',14000,'income'),
('r7','e5','2024-12-31','tax',2000,'tax'),
('r8','e8','2024-12-29','expenses',10000,'expenses'),
('r9','e4','2024-12-30','income',18000,'income');
