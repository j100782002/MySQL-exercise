#01. 請列出部門編號、部門平均薪資，只顯式部門平均薪資大於2500的部門
select
	DEPTNO, 
	AVG(SAL)
from 
	EMP
group by 
	DEPTNO
having 
	AVG(SAL) > 2500;

#02. 請列出到職年、該年到職人數，只顯示到職年當年人數等於1的資料
select distinct
	YEAR(HIREDATE), 
	count(*)
from 
	EMP
group by 
	YEAR(HIREDATE)
having 
	count(*) = 1;

#03. 請列出各部門編號、部門每月發出薪資總和，只顯示部門每月發出薪資總和小於10000的部門，並依部門編號遞減排序
select 
	DEPTNO,
    SUM(SAL) as 部門每月發出薪資總和
from 
	EMP
group by 
	DEPTNO
having 
	SUM(SAL) < 10000    
order by 
	DEPTNO desc;

#04. 請列出職稱、該職稱平均薪資、該職稱人數，只顯示職稱平均薪資大於2000且 職稱人數小於2的資料
select 
	JOB,
    AVG(SAL) as '該職稱平均薪資',
    count(*) as '人數'
from 
	EMP
group by 
	JOB
having 
	AVG(SAL) > 2000 and count(*) < 2;

#05. 請列出部門編號、部門最低薪資、部門最高薪資，且過濾掉最低薪資大於1200的資料
select 
	DEPTNO, 
	MIN(SAL) as '部門最低薪資', 
	MAX(SAL) as '部門最高薪資'
from 
	EMP
group by 
	DEPTNO
having 
	MIN(SAL) <= 1200
order by 
	DEPTNO;    



