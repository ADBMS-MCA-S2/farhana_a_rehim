create database employees;
use employees;
create table employee(empno varchar(20) not null,emp_name varchar(30),dept varchar(20) not null,salary integer(10) not null,doj date not null,branch varchar(20) not null,primary key(empno));
insert into employee values("E101","Amit","production",45000,"12-Mar-02","Banglore");
alter table employee modify doj varchar(20) not null;
insert into employee values("E102","Amit","HR",70000,"03-Jul-02","Banglore");
insert into employee values("E103","Sunita","management",120000,"11-Jan-01","mysore");
insert into employee values("E105","Sunita","IT",67000,"01-Aug-01","mysore");
insert into employee values("E106","Mahesh","civil",145000,"20-Sep-03","mumbai");
select * from employee;   #q1
select empno,salary from employee;    #q2
select avg(salary) from employee;     #q3
select count(empno) from employee;   #q4
select distinct * from employee;      #q5
select * from employee where salary>120000;   #q7
select emp_name from employee order by emp_name DESC;   #q8
select *from employee where emp_name="Amit" and salary>50000;   #q9
select sum(salary),emp_name,count(*) as occurences from employee group by emp_name having(count(*)>1);  #q6

