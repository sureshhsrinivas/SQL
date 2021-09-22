

create table student(
id int primary key,
name varchar(20),
marks varchar(20),
dept_id int
);

-------------------------------------------

create table department(
dept_id int primary key,
dept_name varchar(20)
);

---------------------------------------------

insert into department values(1,'java'),(2,'Sql'),(3,'C++'),(4,'SE'),(5,'Linux');

insert into student values(1,'suresh',90,2),(2,'teju',95,1),(3,'loki',96,3)(4,'Sudee',97,4);

--------------------------------------------

select * from student;
select * from department;