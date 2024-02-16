create schema if not exists company_constraints;
  use company_constraints;
  

  
create table employee (
	fname varchar(15) not null,
    minit char,
    lname varchar(15) not null,
    ssn char(9) not null,
    bdate date,
    address varchar(30),
    sex char,
    salary decimal(10,2),
    super_ssn char(9),
    dno int not null,
    constraint chk_salary_emplooye check (salary > 2000.0),
    constraint pk_employee primary key (ssn)
    );
    
  desc employee;
    
create table departament (
	bname varchar(15) not null,
    dnumber int not null,
    mgr_ssn char(9),
    mgr_start_date date,
    dept_create_date date,
    constraint check 
    primary key (dnumber),
    unique(bname),
    foreign key (mgr_ssn) references employee(ssn)
    );
    
create table dept_location (
	dnumber int not null,
    dlocation varchar(15) not null,
    primary key (dnumber,dlocation),
    foreign key (dnumber) references departament(dnumber)
);

create table project (
	pname varchar(15) not null,
    pnumber int not null,
    plocation varchar(15),
    dnum int not null,
    primary key (pnumber),
    unique(pname),
    foreign key (dnum) references departament (dnumber)

);

create table works_on (
	essn char(9) not null,
    pno int not null,
    hours decimal(30,1) not null,
    primary key (essn, pno),
    foreign key (essn) references employee (ssn),
    foreign key (pno) references project (pnumber)    
);

create table dependent (
	essn char(9) not null,
    dependent_name varchar(30) not null,
    sex char,
    bdate date,
    relationship varchar(15),
    primary key (essn, dependent_name),
    foreign key (essn) references employee(ssn)
);

show tables;

use company;

desc departament;
desc employee;
desc works_on;
desc dependent;

select * from information_schema.table_constraints
	where constraint_schema = 'company';

