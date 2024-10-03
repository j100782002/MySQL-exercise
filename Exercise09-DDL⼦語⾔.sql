#01. 請新建 會員資料表MEMBER，欄位描述如下..

create table MEMBER(
  ID int not null auto_increment comment "編號",
  USERNAME varchar(50) comment "使用者名稱",
  PASSWORD varchar(50) comment "密碼",
  PASS bit(1) default 0 comment "帳號啟用記號",
  CREATE_DATE datetime comment "建立日期",
  LAST_UPDATE_DATE datetime,
  primary key(ID)
  ) comment = "會員資料表";
  
  
#02. 請替資料表MEMBER的欄位PASSWORD之後加入一欄位..
alter table `MEMBER`
add column NICKNAME varchar(50) comment "暱稱" after PASSWORD ;

/*#03. 請修改資料表MEMBER的欄位
 * 	   USERNAME、PASSWORD: not null、長度100
 * 	   LAST_UPDATE_DATE: 預設值NOW()、註解"最後修改日期"
 */
alter table `MEMBER`
change USERNAME USERNAME varchar(100) not null 
change `PASSWORD` `PASSWORD` varchar(100) not null 
change LAST_UPDATE_DATE LAST_UPDATE_DATE datetime default NOW() comment "最後修改日期" after CREATE_DATE;

#04. 請將資料表MEMBER的欄位USERNAME設為唯一鍵
alter table `MEMBER`
add constraint UK_MEMBER_USERNAME unique key(USERNAME);

# 05. 請將資料表MEMBER的欄位USERNAME的唯一鍵約束移除
alter table `MEMBER`
drop constraint UK_MEMBER_USERNAME;

# 06. 請將資料表MEMBER的欄位CREATE_DATE移除
alter table `MEMBER`
drop column CREATE_DATE;

# 07. 請新建資料表 MEMBER2、MEMBER3，2個資料表的結構跟資料須與資料表MEMBER一樣
create table MEMBER2
as select * from `MEMBER`;
create table MEMBER3
as select * from `MEMBER`;

# 08. 請將資料表MEMBER2改名為MEMBER_HIS
alter table MEMBER2
rename to MEMBER_HIS;

# 09. 請將資料表MEMBER3截斷(truncate)
truncate table MEMBER3;

# 10. 請將資料表MEMBER3的儲存引擎改為MyISAM
alter table MEMBER3
engine MyISAM;

# 11. 請將資料表MEMBER3移除
drop table MEMBER3;
