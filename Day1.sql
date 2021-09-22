

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

select name from student;

select * from student order by id asc;

select *from student order by id desc;

select * from student where id>3 order by id desc;

select count(*) from student;

select count(*) as total from student;

select *from student where id<6 LIMIT 1,2;

select *from student GROUP BY dept_id;

select * from student where name like='e%';

select * from stu where name like='%e';

select *from student where marks>90;

select *from student where marks>=90 and marks<=100;

select *from student where marks>85 and marks<95;

select dept_name from department;
