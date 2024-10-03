# 01.請撰寫⼀select敘述，查詢Table:DEPT，列出所有資料列
select 
    *
from 
    DEPT;

#02.請撰寫⼀select敘述，查詢Table:EMP，x列出所有員工的姓名(NAME)、職稱(JOB)、到職日(HIREDATE)、及員工編號(EMPNO)，員工編號須顯⽰在第⼀欄
select 
	EMPNO,
    ENAME,
    JOB,
    HIREDATE
from 
    EMP;

#03.請撰寫一select敘述，查詢Table:EMP，列出不同的到職日(HIREDATE)(去除重複的到職日)
select distinct
	HIREDATE
from 
    EMP;

#04.續第02，請將select敘述加上別名...
select
	ENAME EmployeeName,
    JOB Title,
    HIREDATE HireDate,
    EMPNO EmployeeNo
from 
    EMP;

#05.請撰寫一select敘述，查詢Table:EMP，列出員工姓名串接職稱，中間用逗號和空白隔開(', ')，並加上別名NAMEandTITLE
select 
	CONCAT(ENAME, ', ' , JOB) as 'NAMEandTITLE'
from 
    EMP;