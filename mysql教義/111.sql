select * from emp where sal>3000;
select enmae from emp where enmae=WARD"
select empno,ename from emp;
select * from emp;
select empno,ename,sal*12 from emp;
select ename from emp;
SELECT * FROM EMPLOYEE
  CREATE TABLE 受注表
  (
     受注番号     INTEGER NOT NULL,
     得意先コード CHAR(5) ,
     商品コード   CHAR(4) ,
     受注個数     INTEGER
  ) ;
  
select empno,ename from emp
select * from emp
select empno from emp where empno>7900 and sal>1000
select empno,ename,sal*12 from emp
select empno'?号',ename'姓名',sal*12'年薪' from emp 
 select empno as '?号'from emp;

select sal from emp
select * from dept;
select empno,ename,sal-12 from emp
select empno as nihao from emp;
select empno,ename,sal from emp where sal = 5000
select empno,ename,job from emp where job ='manager'

select empno,ename,sal from emp where sal <> 5000
select empno,ename,sal from emp where sal != 5000
select empno,ename,sal from emp where sal >= 600 and sal <= 9000
select empno,ename,sal from emp where sal between 10 and 5000
select ename from emp where ename between 'A' and 'Z';
select empno,ename,comm from emp where comm is null
select empno,ename,comm from emp where comm is not null
select empno,ename,sal from emp where ename>'s' and sal<5000
select empno,ename,sal from emp where ename>='s' or ename>='g'
select * from emp where sal>1800 and (deptno=20 or deptno=30)
select ename,sal from emp where sal in (5000,'7990')
select ename,sal from emp where sal in (1600,3000);
select ename,sal from emp where sal not in (1600,3000)
select ename,sal from emp where not (sal = 1600 or sal = 3000)
select ename,sal from emp where sal not in (1600,3000);
select * from emp where comm is not null
select ename from emp where ename like '%M%'
select ename from emp where ename like  '__A%'
select ename,job,sal from emp where job='MANaGER' order by sal;
select ename,sal from emp order by sal asc
select ename,sal,job from emp order by sal desc,job desc
select * from emp order by 1;
select Lower(job) as job from emp;
select Lower(ename) as job from emp
select substr(job,3,1)from emp
select ename from emp where substr(ename,2,1)='A'
select mgr,length(mgr) as salLength from emp
select job,ifnull(sal,0) from emp;
select sal + ifnull(comm,0) from emp
select ename,(sal+ifnull(comm,100))*12 as yearsal from emp order by yearsal asc
select ename,sal,job,
(case sal
  when 'MANAGER' then sal*1.1
  when 'SALESMAN' then sal*1.5
  else sal
end)
from
         emp where job in ('SALESMAN','MANAGER') order by sal
select * from emp where job = trim('       manager                ');
select round(125.18,3)
select round(125.18,-1);
select rand()
select round(rand()*100)
select str_to_date('Tue, 03 Jul 2018 10:49:00 +0900','%a, %d %b %Y %H:%i:%s')+INTERVAL 9 HOUR AS str_date;
select ename,hiredate from emp where hiredate = '1981-12-03'
select ename,hiredate from emp where hiredate =str_to_date('02-20-1981','%m-%d-%Y')





select ename,date_format(hiredate,'%m-%d/%y')hiredate from emp order by ename
select ename,date_format(hiredate,'%m/%d/%y')hiredate from emp order by ename
select ename,date_format(hiredate,'%m*%d*%y')hiredate from emp order by ename
select sum(sal*12312321312312312312) from emp
select sum(comm/12)from emp
select sum((sal+comm))from emp
select sum(ifnull(sal,0)+ifnull(comm,0))from emp
select avg(ifnull(sal,0)*12) as avgsal from emp
select max(ifnull(sal,0)) as maxsal from emp
select max(hiredate) from emp
select min(ifnull(comm,0))from emp
select min(hiredate) from emp
select count(*) from emp where comm is null
select count(*),sum(sal),min(sal),max(sal),avg(sal) from emp;
select distinct job from emp
select count(distinct job) from emp
select distinct job,deptno from emp
select max(sal) from emp group by job
select job,max(sal) from emp group by job
select ename,job,max(sal) as maxsal from emp group by job order by maxsal
select deptno,avg(sal) as avgsal from emp group by deptno order by avgsal
select deptno,job,max(sal)as maxsal from emp group by deptno,job
select job,max(sal)as maxsal from emp where job!='MANAGER' group by job
select job,avg(sal)as avgsal from emp group by job having avg(sal) > 2000  
select e.ename,d.dname from emp e,dept d order by ename
select d.dname,e.ename from emp e,dept d where e.deptno = d.deptno
select d.dname,e.ename from emp e,dept d where e.deptno=d.deptno

CREATE TABLE wangbin123(
 PersonID varchar(20),
 LastName varchar(20),
 FirstName varchar(20)

);
insert into wangbin123(PersonID,LastName,FirstName)values('4','wang','shi')
insert into wangbin123(PersonID,LastName,FirstName)values('5','loi','shi')
insert into wangbin123(personid,lastname,firstname)values('6','aaa','bbb')
drop table table_wang
insert into wangbin123(personid,lastname)values('wang','wi')
insert into wangbin123 values('7','hj','sb')
insert into wangbin123 values('8','王','斌')
show variables like '%char%';
set character_set_results = 'GBK';
drop table if exists wangbin
create table wangbin222(
xing varchar(4),
ming varchar(4),
nianling int(2),
sex char(1) default 'm',

birth date,
email varchar(128)

);
insert into wangbin222(xing,ming,nianling)values('wang','bin',18);
insert into wangbin222(xing,ming,nianling)values('wang','bin',18);
select * from wangbin222
update tb_userlist set name='wang'where pass=111;
update tb_userlist set pass='1'where name='wang';
update tb_userlist set pass='11'where name='wangbin';
update tb_userlist set name='wangbin'where pass=11;
update tb_userlist set name='wangbin'where pass=111;
