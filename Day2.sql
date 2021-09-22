 
select * from student s,department d where s.D_id=d.D_id;

select * from student where d_id>3;

select * from department where dept_name='SQL';

-----------------------------------------------------------

select * from student where D_id=(select D_id from department where dept_name='java');

-------------------------------------------------------------------------

select * from student where D_id in (select D_id from department where dept_name='c++'|| dept_name='linux');

-----------------------------------------------------------------------

UPDATE student SET marks=100 WHERE name='teju';

---------------------------------------------------------

delete from department where dept_id=5;

drop table department;

---------------------------------------------------------

alter table student add results varchar(20);

alter table student drop results;

alter table student modify results int;

alter table student modify results varchar(20);

----------------------------------------------------------

create table sales(
salesid int not null primary key,
salesName varchar(20),
address varchar(20)
);

----------------------------------------------------------

create table order_sales(
id int primary key,
productName varchar(20),
address varchar(30),
salesid int,
constraint FK_sales Foreign key(salesid)
references sales(salesid)
);

---------------------------------------------------------

select * from order_sales;

select * from sales;

------------------------------------------------------------
insert into sales values(1,'airtel','tamilnadu'),(2,'vi','gujarat'),(3,'jio','mumbai'),(4,'bsnl','karnataka');

insert into order_sales values(121,'monthlypack','airtel',1),(122,'weeklypack','vi',2),(123,'dailypack','jio',3),(124,'yearlypack','bsnl',4);

------------------------------------------------------------

select * from sales s inner join order_sales p on s.address=p.address;

select * from sales s left join order_sales p on s.address=p.address;
select * from sales s right join order_sales p on s.address=p.address;

delete from sales where salesid=1;

select distinct  salesname, id, productName from sales s , order_sales o where s.salesid= o.salesid and s.salesname= 'Airtel';
