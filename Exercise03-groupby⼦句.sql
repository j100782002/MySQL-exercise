#01. 請列出公司一年需發出薪資總和 (不含獎金)
select 
	sum(SAL * 12) as '一年需發出薪資總和 (不含獎金)'
from 
	EMP;


#02. 請列出公司平均年薪
select 
	AVG(SAL * 12) as '公司平均年薪'
from 
	EMP;

#03. 請列出各部門編號、部門每月發出薪資總和，並依部門編號遞增排序
select 
	DEPTNO,
    SUM(SAL) as 部門每月發出薪資總和
from 
	EMP
group by 
	DEPTNO
order by 
	DEPTNO;
    
#04. 請列出職稱、該職稱平均薪資、該職稱人數
select 
	JOB,
    AVG(SAL) as '該職稱平均薪資',
    count(*) as '人數'
from 
	EMP
group by 
	JOB;

#05. 請列出部門編號、部門最低薪資、部門最高薪資
select 
	DEPTNO, 
	MIN(SAL) as '部門最低薪資', 
	MAX(SAL) as '部門最高薪資'
from 
	EMP
group by 
	DEPTNO
order by 
	DEPTNO;    
    
#06. 請列出到職年、該年到職人數
select distinct
	YEAR(HIREDATE), 
	count(*)
from 
	EMP
group by 
	YEAR(HIREDATE);


