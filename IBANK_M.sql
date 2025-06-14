--Create Database
use IBANK
CREATE DATABASE IBANK
 
SP_HELP AccountMaster

CREATE TABLE AccountMaster
(
ACID		    INTEGER     Primary Key,
NAME			VARCHAR(40) NOT NULL,
ADDRESS			VARCHAR(50) NOT NULL,
BRID			CHAR(3)   NOT NULL Foreign Key references BranchMaster(BRID),
PID				CHAR(2)   NOT NULL Foreign Key references ProductMaster(PID),
DateofOpening   DATETIME  NOT NULL,
ClearBalance    MONEY     NULL ,
UnclearBalance  MONEY     NULL,
STATUS          CHAR(1)   NOT NULL
);

SELECT STATUS,* FROM AccountMaster  WHERE STATUS = 'I'
--Insert into the values
INSERT INTO AccountMaster VALUES(320,'BOJAPPA','ADONI','BR1','SB','11-11-2008',5000,5000,'O')
INSERT INTO AccountMaster VALUES(101,'VISHNUKUMAR','ALUR','BR2','LA','10-8-2000',10000,4000,'C')
INSERT INTO AccountMaster VALUES(102,'SUBAN','ADONI','BR2','FD','9-28-2020',6000,40000,'I')
INSERT INTO AccountMaster VALUES(103,'RAMESHEWARI','ADONI','BR4','LA','2-18-2021',8000,6000,'O')
INSERT INTO AccountMaster VALUES(104,'VEERESH','YMG','BR3','SB','5-13-2009',7000,1000,'O')
INSERT INTO AccountMaster VALUES(105,'SOUMYA','BELLARI','BR1','SB','3-10-2010',9000,500,'O')
INSERT INTO AccountMaster VALUES(106,'MAHENDRA','KTL ','BR4','SB','4-15-2011',16000,9000,'I')
INSERT INTO AccountMaster VALUES(107,'MEENAKSHI','KNL','BR5','SB','12-16-2012',25000,7000,'I')
INSERT INTO AccountMaster VALUES(108,'RAJU','GTL','BR6','SB','1-19-2013',2500,3000,'C')
INSERT INTO AccountMaster VALUES(109,'GANESH','ADONI','BR1','LA','6-21-2017',36000,1000,'C')
INSERT INTO AccountMaster VALUES(110,'VIRU','PKD','BR5','LA','6-21-2017',2000,5000,'I')
INSERT INTO AccountMaster VALUES(111,'BADRI','ADONI','BR1','LA','10-30-2022',1000,5000,'C')

INSERT INTO AccountMaster VALUES(112,'VARMA','KNL','BR1','SB','12-11-2022',6000,8000,'A')
INSERT INTO AccountMaster VALUES(113,'VAMSI','ADONI','BR1','SB','9-11-2023',9000,5000,'A')
INSERT INTO AccountMaster VALUES(114,'GEETA','GTL','BR1','SB','9-1-2023',7000,5000,'C')
INSERT INTO AccountMaster VALUES(115,'ARJUN','ADONI','BR5','LA','9-22-2023',9500,5000,'A')
INSERT INTO AccountMaster VALUES(116,'HUSEN','GTL','BR6','SB','10-21-2022',8000,5000,'A')
INSERT INTO AccountMaster VALUES(117,'USHA','KNL','BR3','LA','7-23-2023',4000,4000,'A')
INSERT INTO AccountMaster VALUES(118,'RAVI','PKD','BR1','SB','9-29-2022',3000,5000,'A')
INSERT INTO AccountMaster VALUES(119,'GOUD','KTL','BR6','SB','9-25-2023',500,5000,'A')
INSERT INTO AccountMaster VALUES(120,'RAJASHEKAR','ADONI','BR3','SB','11-11-2008',5000,5000,'A')
INSERT INTO AccountMaster VALUES(121,'SWATI','KNL','BR1','FD','6-21-2017',5000,8500,'A')
INSERT INTO AccountMaster VALUES(122,'MANJU','KTL','BR3','LA','9-22-2023',8500,8500,'A')
INSERT INTO AccountMaster VALUES(123,'SHAIK','PKD','BR1','SB','6-10-2023',87500,5000,'A')
INSERT INTO AccountMaster VALUES(124,'BASAVA','GTL','BR1','SB','3-25-2017',6500,8500,'A')
INSERT INTO AccountMaster VALUES(125,'SRINU','KTL','BR2','SB','7-23-2023',8500,5000,'I')
INSERT INTO AccountMaster VALUES(126,'VENKATESH','GTL','BR5','LA','12-16-2012',15820,15820,'I')
INSERT INTO AccountMaster VALUES(127,'CBN','PKD','BR3','SB','5-1-2023',2450,8500,'I')
INSERT INTO AccountMaster VALUES(128,'PAVAN','KTL','BR2','SB','6-22-2023',6500,6500,'I')
INSERT INTO AccountMaster VALUES(129,'BASHA','KNL','BR5','SB','7-23-2023',9850,8500,'I')
INSERT INTO AccountMaster VALUES(130,'AMMULU','PKD','BR3','FD','12-16-2012',12500,5000,'A')
INSERT INTO AccountMaster VALUES(131,'NANDINI','GTL','BR2','LA','9-1-2023',9000,6000,'A')
INSERT INTO AccountMaster VALUES(132,'ANJALI','PKD','BR3','SB','7-23-2023',5000,2450,'A')
INSERT INTO AccountMaster VALUES(133,'SAI','KTL','BR2','SB','6-21-2017',87500,5000,'A')
INSERT INTO AccountMaster VALUES(134,'VALMIKI','KNL','BR5','LA','8-22-2023',6000,6000,'A')
INSERT INTO AccountMaster VALUES(135,'ESWAR','GTL','BR3','SB','12-16-2012',15820,5000,'O')
INSERT INTO AccountMaster VALUES(136,'BALU','PKD','BR5','FD','7-1-2023',87500,6000,'O')
INSERT INTO AMASAccountMasterTER VALUES(137,'SIVA','KNL','BR2','SB','3-22-2023',5000,5000,'O')

SELECT*FROM AccountMaster WHERE BRID ='BR2'

INSERT INTO AccountMaster VALUES(138,'BOJA','ADONI','BR1','FD','11-11-2008',5000,5000,'O')
INSERT INTO AccountMaster VALUES(139,'VISHNU','ALUR','BR2','FD','10-8-2000',10000,4000,'O')
INSERT INTO AccountMaster VALUES(141,'SUB','ADONI','BR2','SB','9-28-2020',6000,40000,'I')
INSERT INTO AccountMaster VALUES(142,'RAMESH','ADONI','BR4','SB','2-18-2021',8000,6000,'O')
INSERT INTO AccountMaster VALUES(143,'VEERE','YMG','BR3','FD','5-13-2009',7000,1000,'O')
INSERT INTO AccountMaster VALUES(144,'SOUMYA','BELLARI','SB','BR1','3-10-2010',9000,500,'O')
INSERT INTO AccountMaster VALUES(145,'MAHEND','KTL','BR4','SB','4-15-2011',16000,9000,'O')
INSERT INTO AccountMaster VALUES(146,'MEENAK','KNL','BR5','SB','12-16-2012',25000,7000,'A')
INSERT INTO AccountMaster VALUES(147,'RAJU','GTL','BR6','FD','1-19-2013',2500,3000,'A')
INSERT INTO AccountMaster VALUES(148,'GANE','ADONI','BR1','FD','6-21-2017',36000,1000,'A')
INSERT INTO AccountMaster VALUES(149,'VIRU','BR5','SB','6-21-2017',2000,5000,'A')
INSERT INTO AccountMaster VALUES(150,'BADRI','ADONI','BR1','FD','10-30-2022',1000,5000,'A')
INSERT INTO AccountMaster VALUES(151,'VARMA','KNL','BR1','SB','12-11-2022',6000,8000,'A')
INSERT INTO AccountMaster VALUES(152,'VAMSI','ADONI','BR1','SB','9-11-2023',9000,5000,'A')
INSERT INTO AccountMaster VALUES(153,'GEET','GTL','PKD''BR1','SB','9-1-2023',7000,5000,'A')
INSERT INTO AccountMaster VALUES(154,'ARJUN','ADONI','BR5','SB','9-22-2023',9500,5000,'A')
INSERT INTO AccountMaster VALUES(155,'HUSEN','GTL','BR6','FD','10-21-2022',8000,5000,'A')
INSERT INTO AccountMaster VALUES(156,'USH','KNL','BR3','SB','7-23-2023',4000,4000,'A')
INSERT INTO AccountMaster VALUES(157,'RAVI','PKD','BR1','SB','9-29-2022',3000,5000,'A')
INSERT INTO AccountMaster VALUES(158,'GOUD','KTL','BR6','SB','9-25-2023',500,5000,'A')
INSERT INTO AccountMaster VALUES(159,'RAJASHEKAR','ADONI','BR3','SB','11-11-2008',5000,5000,'A')
INSERT INTO AccountMaster VALUES(160,'SWATI','KNL','BR1','FD','6-21-2017',5000,8500,'A')
INSERT INTO AccountMaster VALUES(161,'MANU','KTL','BR3','SB','9-22-2023',8500,8500,'A')
INSERT INTO AccountMaster VALUES(162,'SHAIK','PKD','BR1','SB','6-10-2023',87500,5000,'I')
INSERT INTO AccountMaster VALUES(163,'BASVA','GTL','BR1','SB','3-25-2017',6500,8500,'I')
INSERT INTO AccountMaster VALUES(164,'SRINU','KTL','BR2','FD','7-23-2023',8500,5000,'I')
INSERT INTO AccountMaster VALUES(165,'VENKATESH','GTL','BR5','SB','12-16-2012',15820,15820,'I')
INSERT INTO AccountMaster VALUES(166,'CBN','PKD','BR3','SB','5-1-2023',2450,8500,'I')
INSERT INTO AccountMaster VALUES(167,'PAVAN','KTL','BR2','SB','6-22-2023',6500,6500,'I')
INSERT INTO AccountMaster VALUES(168,'BASHA','KNL','BR5','FD','7-23-2023',9850,8500,'I')
INSERT INTO AccountMaster VALUES(169,'AMMLU','PKD','BR3','SB','12-16-2012',12500,5000,'I')
INSERT INTO AccountMaster VALUES(171,'NANDNI','GTL','BR2','SB','9-1-2023',9000,6000,'I')
INSERT INTO AccountMaster VALUES(172,'ANJALI','PKD','BR3','SB','7-23-2023',5000,2450,'I')
INSERT INTO AccountMaster VALUES(173,'SAI','KTL','BR2','SB','6-21-2017',87500,5000,'C')
INSERT INTO AccountMaster VALUES(175,'VALMIKI','KNL','BR5','SB','8-22-2023',6000,6000,'C')
INSERT INTO AccountMaster VALUES(175,'ESWR','GTL','BR3','SB','12-16-2012',15820,5000,'C')
INSERT INTO AccountMaster VALUES(176,'BALU','PKD','BR5','SB','7-1-2023',87500,6000,'C')
INSERT INTO AccountMaster VALUES(177,'SIVA','KNL','BR2','SB','3-22-2023',5000,5000,'C')

INSERT INTO AccountMaster VALUES(180,'VALMIKI','KNL','BR2','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(181,'SIVA','KNL','BR8','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(182,'SIVA','KNL','BR6','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(183,'AMMLU','KNL','BR7','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(184,'ANJALI','KNL','BR9','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(185,'SIVA','KNL','BR7','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(186,'SAI','KNL','BR6','SB','3-22-2023',5000,5000,'C')
INSERT INTO AccountMaster VALUES(189,'SIVA','KNL','BR5','SB','3-22-2023',5000,5000,'C')



SELECT*FROM AccountMaster

SELECT ACID, NAME, ADDRESS, BRID, DOP FROM AMASTER

--CREATE PRODUCTMASTER TABLE

CREATE TABLE ProductMaster
(
PID           CHAR(2)   Primary Key,
ProdcutName   VARCHAR(15) not null
)

select*from ProductMaster

--insert the values

insert into  ProductMaster values('SB','Savings Bank')
insert into  ProductMaster values('LA','loan Account')
insert into  ProductMaster values('FD','Fixed Deposit')
insert into  ProductMaster values('RD','Recurring Deposit')

select*from ProductMaster

--CREATE REGIONMASTER TABLE
--to convert font into lower (ctrl+shift+L)-TO UPPER U

CREATE TABLE regionmaster
(
RID          INTEGER Primary Key,
RegionName  CHAR(6) NOT NULL
)

SELECT*FROM RegionMaster

--INESRT THE VALUES
insert into  RegionMaster values(1,'South')
insert into  RegionMaster values(2,'North')
insert into  RegionMaster values(3,'West')
insert into  RegionMaster values(4,'Est')

SELECT*FROM RegionMaster


--create Branchmaster table

create table BranchMaster
(
BRID             CHAR(3)      Primary Key,
BranchName       VARCHAR(30)   NOT NULL,
BranchAddress      VARCHAR(50)   NOT NULL,
RID               INT  NOT NULL  Foreign Key REFERENCES RegionMaster(RID)
)


SELECT*FROM BranchMaster

insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR2','GOVA','NEARRAILWA GOVA',4)

insert into  BranchMaster values('BR3','PBENGAL','BENGALI',3)

insert into  BranchMaster values('BR4','KASMIRA','JAMMU',1)
insert into  BranchMaster values('BR5','SECENDARBAD','PATNY',2)
insert into  BranchMaster values('BR6','ADILABAD','CHURCHGATE',2)
insert into  BranchMaster values('BR7','KURNOOL','NEAR BUSTAND',2)
insert into  BranchMaster values('BR8','VIJAWADA','KRISHNALANKA',2)
insert into  BranchMaster values('BR9','GUNTUR','GUNTUR',2)


insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)
insert into  BranchMaster values('BR1','HYDERABAD','KUKATPALLI HYD',2)

--CREATE USERMASTER TABLE
-- FOR EMPLOYEES OF THE BANK
CREATE TABLE UserMaster
(
UserID       INTEGER   Primary Key,
UserName     VARCHAR(30)  NOT NULL,
Designation  CHAR(1)    NOT NULL CHECK(Designation IN ('M','C','T','O'))
)

SELECT*FROM UserMaster

INSERT INTO UserMaster VALUES(1,'BOJAPPA JELLY','M')
INSERT INTO UserMaster VALUES(2,'VISHNU P','O')
INSERT INTO UserMaster VALUES(3,'SUBAN','C')
INSERT INTO UserMaster VALUES(4,'SOUMYA','M')
INSERT INTO UserMaster VALUES(8,'MAHENDRA','T')
INSERT INTO UserMaster VALUES(6,'HUSEM','O')
INSERT INTO UserMaster VALUES(7,'BANUMA','M')
INSERT INTO UserMaster VALUES(14,'SUBBU','O')
INSERT INTO UserMaster VALUES(9,'JOHAN','T')
INSERT INTO UserMaster VALUES(10,'VICKY','M')
INSERT INTO UserMaster VALUES(11,'VEERESH','T')
INSERT INTO UserMaster VALUES(12,'RAVI','O')
INSERT INTO UserMaster VALUES(13,'RAVENDRA','C')



SELECT*FROM UserMaster
--CREATE TRANCTION TABLE

CREATE TABLE TxnMaster
(
TNO         INTEGER     Primary Key Identity(1,1),
DOT         DATETIME      NOT NULL,
ACID        INTEGER       NOT NULL  Foreign Key references AccountMaster(ACID),
BRID        CHAR(3)       NOT NULL  Foreign Key references BranchMaster(BRID),
TXN_TYPE    CHAR(3)       NOT NULL  CHECK(TXN_TYPE IN ('CW','CD','CQD')),
CHQ_NO      INTEGER       NULL, 
CHQ_DATE    SMALLDATETIME NULL, 
TXN_AMOUNT   MONEY       NOT NULL,
USERID      INTEGER      NOT NULL Foreign Key references UserMaster (UserID)
)


select*from TxnMaster

--insert the data

INSERT INTO TxnMaster VALUES('2023/11/12',101,'BR1','CD',NULL,NULL,1000,1)
INSERT INTO TxnMaster VALUES('2023/1/10',101,'BR1','CD',NULL,NULL,1000,2)
INSERT INTO TxnMaster VALUES('2023/11/22',101,'BR2','CW',NULL,NULL,2000,3)
INSERT INTO TxnMaster VALUES('2022/11/12',101,'BR3','CD',NULL,NULL,3000,4)
INSERT INTO TxnMaster VALUES('2022/8/2',102,'BR4','CQD',NULL,NULL,500,5)
INSERT INTO TxnMaster VALUES('2021/11/12',104,'BR5','CD',NULL,NULL,2000,6)
INSERT INTO TxnMaster VALUES('2023/9/15',105,'BR6','CQD',NULL,NULL,1500,7)
INSERT INTO TxnMaster VALUES('2020/1/10',106,'BR1','CD',NULL,NULL,2800,8)
INSERT INTO TxnMaster VALUES('2019/6/12',107,'BR2','CW',NULL,NULL,10000,9)
INSERT INTO TxnMaster VALUES('2018/7/12',108,'BR3','CQD',NULL,NULL,1400,10)
INSERT INTO TxnMaster VALUES('2017/8/12',109,'BR4','CW',NULL,NULL,1000,11)
INSERT INTO TxnMaster VALUES('2016/10/12',110,'BR5','CD',NULL,NULL,1200,12)
INSERT INTO TxnMaster VALUES('2023/9/25',111,'BR6','CD',NULL,NULL,10000,13)
INSERT INTO TxnMaster VALUES('2023/7/6',119,'BR1','CW',NULL,NULL,1200,12)
INSERT INTO TxnMaster VALUES('2023/2/18',113,'BR2','CQD',NULL,NULL,1000,13)
INSERT INTO TxnMaster VALUES('2022/12/1',114,'BR4','CD',NULL,NULL,10000,12)
INSERTED
 select*from TxnMaster


--addd check constraint to Txnmaster(without constraint name)

alter table TxnMaster add check(TXN_AMOUNT>=0)

--with name
alter table TxnMaster add constraint CK_Txn_amt check(TXN_AMOUNT>=0)


--Findout the scheema of the table

sp_help TxnMaster

SELECT*FROM TxnMaster

--ALL COLUMNS AND ALL ROWS
SELECT*FROM AccountMaster

--SOME COLUMNS AND ALL ROWS

SELECT ACID,NAME,BRID FROM AccountMaster

--ALL COLUMNS AND SOME ROWS
SELECT*FROM AccountMaster WHERE BRID='BR1'

SELECT*FROM AccountMaster ORDER BY CBAL DESC

--List the ACID AND Name only for SB Acounts and list hte names in Desending order

select*from AccountMaster where PID='SB'
ORDER BY NAME DESC

select*from AccountMaster where PID='SB'
ORDER BY NAME ASC


--ONLY ASK QS IN INTERVIEWS
--IS IT VALLIED?

SELECT* ,*FROM AccountMaster

SELECT ACID,NAME,BRID,* FROM AccountMaster

--CONSTANT
SELECT 9 ISMYNUMBER

SELECT 'JAVA'

SELECT *,'JAVA', 5 AS GROUPID FROM AccountMaster

--VALID STATEMENTS
SELECT ACID,NAME,CBAL,'USD' AS CURRENCY , '18%' AS TAX FROM AccountMaster
SELECT ACID,NAME,CBAL,'INR' AS CURRENCY , '18%' AS TAX FROM AccountMaster

--CONCATENATE(SAPCE MUST BE BEFORE '  IS'
SELECT ACID,NAME+' IS DOING SQL  COURSE' AS STATUS FROM AccountMaster

--THE Following functions are to change the data type:
--CAST(COL AS DATATYPE)
--CONVERT(DATETYPE,COL,STYLENUMB)

SELECT ACID,NAME ,CAST(CBAL AS VARCHAR)+'INR'AS BALANCE FROM AccountMaster

SELECT ACID,NAME ,CONVERT(VARCHAR,  CBAL)+' INR'AS BALANCE
FROM AccountMaster

--We can print constanta and cols

SELECT ACID,NAME,CBAL ,'USD' AS CURRENCY FROM AccountMaster

--Aggrigation Functions

--Findout of no of customers

select count(*) from AccountMaster
select count(*) as No_of_customers from AccountMaster

--Findout of no of customers from branch BR1
select count(*) as No_of_customers 
from AccountMaster WHERE BRID='BR1'

--Findout of no of customers from branch BR1 AND BR2
select count(*) as No_of_customers 
from AccountMaster WHERE BRID='BR1' OR BRID='BR1'

--Findout of no of customers from branch BR1 AND BR2,BR3,BR4
select count(*) as No_of_customers 
from AccountMaster WHERE BRID IN('BR1','BR1','BR3')

--Execuation of the query (FROM->WEHRE->Aggrigation->SELECT/Display the value)

--Findout of Total balance from branch BR1
select sum(CBAL) as Totalbalance 
from AccountMaster
where BRID='BR1'

--Findout of Minimum balance from branch BR1
select min(CBAL) as minbalance 
from AccountMaster
where BRID='BR1'

--Findout of Max balance from branch BR1
select max(ClearBalance) as maxbalance 
from AccountMaster
where BRID='BR1'


select avg(ClearBalance) as avgbalance 
from AccountMaster
where BRID='BR1'

--All in one query
select 
count(*) as No_of_customers ,
  sum(CBAL) as Totabalance, 
  min(CBAL) as minlbalance, 
  max(CBAL) as maxlbalance, 
  avg(CBAL) as avglbalance
from AccountMaster

select 
count(*) as No_of_customers ,
  sum(CBAL) as Totabalance, 
  min(CBAL) as minlbalance, 
  max(CBAL) as maxlbalance, 
  avg(CBAL) as avglbalance
from AccountMaster where brid='BR1'

--Branch wise no of customers
--Group By clause

Select BRID,COUNT(*) AS COUNT
FROM AccountMaster GROUP BY BRID

--Product wise no of customers
Select PID,COUNT(*) AS COUNT
FROM AccountMaster GROUP BY PID
ORDER BY PID ASC

Select PID,
sum(CBAL) as Totabalance, 
  min(CBAL) as minlbalance, 
  max(CBAL) as maxlbalance, 
  avg(CBAL) as avglbalance
FROM AccountMaster GROUP BY PID
ORDER BY PID ASC


--GROUP IN A GROUP
--Branch wiese ,Product wiese no of customers
select BRID,PID,SUM(CBAL) AS TOTALBALANCE
FROM AccountMaster GROUP BY BRID,PID

--Branch wiese ,Product wiese no of customers IN THE Year of 2023

select BRID,PID,SUM(CBAL) AS TOTALBALANCE
FROM AccountMaster WHERE YEAR(DOO)=2023
GROUP BY BRID,PID

--Purposr of Grup by clause
--Group by clause needs	to be used  only for aggregations.
--Do not use group by clause there is no aggregation
--List all branches 

--Not recomended query.(compulsary aggrigations are nedded)

select BRID FROM AccountMaster Group by BRID
--must use aggergations in group by clause
select BRID ,sum(CBAL) as total
FROM AccountMaster Group by BRID

--Distinct(is eliminate the duplicate values)
--Recomanded Query (Boath  are gives same result)

select distinct(BRID) FROM AccountMaster

--Findout no of branches(NULLS WILL NOT COUNTING)
select count(distinct BRID) AS NO_OF_BRANCHES FROM AccountMaster
--Date and Time Functions
--1 Getdate() it gives current date

SELECT GETDATE() AS TODAYDATE
SELECT GETDATE()-1 AS YESTERDAYDATE
SELECT GETDATE()+1 AS TOMORROWDATE
 
--CONVERT()-To change the style function

select convert(varchar,GETDATE())    --Nov  4 2023  3:07PM
select convert(varchar,GETDATE(),1)  --11/04/23(MM/DD/YY)
select convert(varchar,GETDATE(),2)  --23.11.04(YY/MM/DD)

select convert(varchar,GETDATE(),101)  --11/04/2023(MM/DD/YYYY)
select convert(varchar,GETDATE(),102)  --2023.11.04(YY/MM/DD)

--Datediff()
--It returns difference b/w 2 dates interms of days/months/years etc.
-- It takes 3 parameters
					Date1      Date2
SELECT DATEDIFF(MM,'2023/5/10',GETDATE()) as monthdifference ---6 months difference
SELECT DATEDIFF(YY,'2020/5/10',GETDATE()) as Yearsdifference --- 3 Years difference
SELECT DATEDIFF(DD,'2023/5/10',GETDATE()) as daysdifference ---178 Days difference
SELECT DATEDIFF(minute,'2023/5/10',GETDATE())--differendein minutes
SELECT DATEDIFF(SS,'2023/5/10',GETDATE())--difference in seconds
SELECT DATEDIFF(MS,'2023/5/10',GETDATE())--difference milliseconds

--What is my age

select datediff(yy,'1992/5/5',getdate()) as myage

--What is the age of each account?

select acid,name ,datediff(YY,DOO,GETDATE()) AS AGE_OF_ACCOUNT
FROM ACCOUNTMASTER


--TO RENAME CONUMN NAMES

SELECT *FROM ACCOUNTMASTER

EXEC SP_RENAME 'ACCOUNTMASTER.DATEOFOPENING','DOO';
EXEC SP_RENAME 'ACCOUNTMASTER.CB','CBAL';
EXEC SP_RENAME 'ACCOUNTMASTER.UB','UBAL';

UPDATE ACCOUNTMASTER
SET DOO=GETDATE()
WHERE ACID=100

select acid,name ,datediff(YY,DOO,GETDATE()) AS AGE_OF_ACCOUNT
FROM ACCOUNTMASTER

--List out the accounts openned in the current year

select acid,name,cbal,doo,datediff(yy,doo,getdate()) as ageofaccount
from ACCOUNTMASTER where datediff(yy,doo,getdate())=0

--List out the accounts openned in the LAST year

select acid,name,cbal,doo,datediff(yy,doo,getdate()) as ageofaccount
from ACCOUNTMASTER where datediff(yy,doo,getdate())=1

--Dataepart()
--It returns the part of the date.It returns always an integer. It takes 2 arguments.
SELECT DATEPART(WW,'2014/5/2') AS WEENO


-- I Want to get current day

SELECT DATEPART(DD,GETDATE()) AS CURRENT_DAY---4 DATE
SELECT DATEPART(MM,GETDATE()) AS CURRENT_WEEKY---11 MONTH
SELECT DATEPART(WW,GETDATE()) AS CURRENT_WEEKY---11 MONTH
SELECT DATEPART(YY,GETDATE()) AS CURRENT_YEAR---2023
SELECT DATEPART(HH,GETDATE()) AS CURRENT_WEEKY---17
SELECT DATEPART(MI,GETDATE()) AS CURRENT_WEEKY---17

--YEAR WISE NO OF ACCOUNTS OPPENED

SELECT DATEPART(YY,DOO)AS YEARNO,COUNT(*) AS COUNTS
FROM ACCOUNTMASTER
GROUP BY DATEPART(YY,DOO)
ORDER BY 1--FIRST COLUMN ORDER

--Who are the ac openned in the year 2011

select acid,name,cbal,datepart(yy,doo) as yeano
from AccountMaster
WHERE datepart(yy,doo)=2023

--LIST OF CUSTOMERS WHO ARE OPPENED IN JULY/23/2023

SELECT ACID,NAME,CBAL,DOO,DATEPART(YY,DOO) AS YERANO
FROM AccountMaster
WHERE DATEPART(YY,DOO)=2023 AND DATEPART(MM,DOO)=7AND DATEPART(DD,DOO)=23

--DATENAME() 
--IT RETURNS THE NAME OF THE DAY OR MONTH.It always returns the string
--.it takes 2 arguments

select datename(dw,getdate())as dayname--sunday

--in which day account oppened?

select*,datename(dw,DOO) as dayname
from AccountMaster

where datename(dw,DOO)='sunday'

SELECT ACID,NAME,
    DATEPART(DD,DOO) AS CURRENT_DAY,
    DATENAME(MM,DOO) AS MONTH_NAME,
    DATEPART(WW,DOO) AS CURRENT_WEEKY,
    DATEPART(YY,DOO) AS CURRENT_YEAR,
    DATEPART(HH,DOO) AS CURRENT_WEEKY,
    DATEPART(MI,DOO) AS CURRENT_WEEKY

	FROM AccountMaster

--I need Year wise,qtrwise,monthwise total balance

SELECT DATEPART(YY,DOO) AS YEARNO,
       DATEPART(QQ,DOO) AS QTRNO,
	    DATENAME(MM,DOO) AS MONTH_NAME,
		SUM(CBAL) AS TOTALBALANCE
		FROM AccountMaster
GROUP BY DATEPART(YY,DOO),DATEPART(QQ,DOO),DATENAME(MM,DOO)

--IF YOU WANT Q1,Q2

SELECT DATEPART(YY,DOO) AS YEARNO,
       'Q'+CAST(DATEPART(QQ,DOO) AS VARCHAR) AS QTRNO,
	    DATENAME(MM,DOO) AS MONTH_NAME,
		SUM(CBAL) AS TOTALBALANCE
		FROM AccountMaster
GROUP BY DATEPART(YY,DOO),DATEPART(QQ,DOO),DATENAME(MM,DOO)

--IF U USE WHERE

SELECT DATEPART(YY,DOO) AS YEARNO,
       'Q'+CAST(DATEPART(QQ,DOO) AS VARCHAR) AS QTRNO,
	    DATENAME(MM,DOO) AS MONTH_NAME,
		SUM(CBAL) AS TOTALBALANCE
		FROM AccountMaster
		WHERE BRID='BR1' AND DATEPART(YY,DOO)=2023
GROUP BY DATEPART(YY,DOO),DATEPART(QQ,DOO),DATENAME(MM,DOO)

/* Dateadd()
It adds/subtracts days or manths or years
to the given date and returns the future/past date.
It takes 3 arguments.
*/

select dateadd(MM,5,GETDATE())-- IT GIVES AFTER 5 MANTHS
select dateadd(DD,5,GETDATE())-- IT GIVES AFTER 5 DAYS
select dateadd(DD,-5,GETDATE())-- IT GIVES  5 BACK DAYS

SELECT ACID,NAME,CBAL, DOO AS DUEDATEON,dateadd(MM,1, doo) as NEXTDUEDATE
FROM AccountMaster

--EOMONTH()
--It gives end of month date

select acid,name,cbal,doo as paidmonth,eomonth(doo) as duemonth
from AccountMaster

select eomonth('2023/5/10')--lastday of the month 2023-05-31

--Top()functions
/*The SELECT TOP clause is used to specify the number of records to return.
The SELECT TOP clause is useful on large tables with thousands of records. 
Returning a large number of records can impact performance.
*/
--It gives first n rows from the table
--Select only the first 5 records of the Customers table:
SELECT top 5*FROM AccountMaster
select top 5 acid,name from AccountMaster

--TOPPERCENT()--TOTALROWS*10/100
SELECT TOP 10 PERCENT * FROM AccountMaster

--Latest rows
select top 10* from AccountMaster order by doo desc

--Findout month wise no of accounts oppened in the year 2023

select DATENAME(MM,DOO) AS MONTHNO,COUNT(*) AS CONTNO
FROM AccountMaster
WHERE datepart(YY,DOO)=2023
GROUP BY DATENAME(MM,DOO)
--BUT ITS NOT WORKIN IN ORDERBY ABOVE QUERY SO FOR THAT
--ITS ORDER BY LIKE JANUARY FIRST


select datepart(MM,DOO)AS MONTHNO, DATENAME(MM,DOO) AS MONTHNO,COUNT(*) AS CONTNO
FROM AccountMaster
WHERE datepart(YY,DOO)=2023
GROUP BY DATENAME(MM,DOO),datepart(MM,DOO)
ORDER BY datepart(MM,DOO) ASC


--HAVING() CLAUSE
/*The HAVING clause was added to SQL because the WHERE keyword cannot be used
with aggregate functions.*/


--Product wiese no of accounts from branch BR1

SELECT PID ,COUNT(*)AS COUNTS FROM AccountMaster
WHERE BRID='BR1'
GROUP BY PID

/*Product wiese no of accounts from branch BR1
WHERE HAVING >5
**Having is works after aggrigation and Grouping was done*
**Alies is working only for order by not ni having clause*/

SELECT PID ,COUNT(*)AS COUNTS FROM AccountMaster
WHERE BRID='BR1'
GROUP BY PID
HAVING COUNT(*)>5

/*Using Having Branch wise total amount int the month of JUNE
provides if total balance exeeds 5000**/

SELECT*FROM AccountMaster

select BRID,SUM(CBAL) AS TOTALBALANCE
FROM AccountMaster
WHERE DATEPART(MM,DOO)=6
GROUP BY BRID
HAVING SUM(CBAL)>5000

/*Branch wise total amount in the month of june
provides details branch=br2*/

select BRID,SUM(CBAL) AS TOTALBALANCE
FROM AccountMaster
WHERE DATEPART(MM,DOO)=6 AND BRID='BR2'
GROUP BY BRID

 --OR
 --BUT IT NOT RECOMENDED
 select BRID,SUM(CBAL) AS TOTALBALANCE
FROM AccountMaster
WHERE DATEPART(MM,DOO)=6
GROUP BY BRID
HAVING BRID='BR2'

--HOW TO DUMP THE DATE INTO NEW TABLE WITH QUERY
--	New table (Instead of  writing multiple times this qury)
select BRID,SUM(CBAL) AS TOTALBALANCE INTO Branchwiesetotal
FROM AccountMaster
WHERE DATEPART(MM,DOO)=7
GROUP BY BRID

--Call the new table
select*from Branchwiesetotal
 select BRID,SUM(CBAL) AS TOTALBALANCE INTO Last_Year_sales
FROM AccountMaster
WHERE DATEPART(MM,DOO) in (10,9) and datediff(YY,DOO, GETDATE()) IN (1,2,3)
GROUP BY BRID

SELECT*FROM Last_Year_sales

drop table Last_chrismas_sales

select datediff(YY,'04/04/1992',getdate()) as myage

--ADVANCE SQL QUERIES
--JOINS--VERY VERY IMP
/* Why Joins?
 I Wanted to retrive the data from morethan one  table or multiple tables
 How many table can we join in sql?
Ans..255 tables
Note: To join the tables we must have common values in boath tables*/

/*4Types of sql joins are there
1)Inner join(simple join/natural join/equijoin)
2)Outer Join
   Left
   Right
   Full
3) Cross join
4)Self join

--INNER JOIN Syntax(For two table)

select* From T1,T2 WHERE T1.PK=T2.FK  (T1=T2 OR T2=T1 ,A=B OR B=A SAME)
INNER JOIN FOR 3TABLES
select* From T1,T2,T3 WHERE T1.PK=T2.FK AND T3.PK=T1.FK  ANY ONE(T2FK OR T1FK)

NOTE:When we join N tables ,we must  have N-1 Joining conditions
*/
 USE IBANK
 select*from AccountMaster
 select*from TxnMaster
 --jOIN(INNERJOIN OR JOIN
 SELECT* FROM AccountMaster,TxnMaster
 WHERE AccountMaster.ACID=TxnMaster.ACID
 --INNER TWO TABLES
 SELECT* FROM AccountMaster AS AM INNER JOIN TxnMaster AS TM
 ON AM.ACID=TM.ACID

  --INNER 5 TABLES
SELECT* FROM AccountMaster AS AM JOIN TxnMaster AS TM
 ON AM.ACID=TM.ACID
 JOIN ProductMaster AS PM
 ON PM.PID=AM.PID
 JOIN BranchMaster AS BM
 ON BM.BRID=TM.BRID
 JOIN RegionMaster AS RM
 ON RM.RID=BM.RID

 SELECT*FROM RegionMaster

 /*IN INTER VIE TABLES*
      TableA      TableB
	  ColA		  ColB
	  NULL			1
      NULL          2
	  1				NULL
	  2				2
	  3				3
APP ALL JOINS QS
	 
	 */	

 --OUTER
 --LEFTJOIN
 --IT WILL GIVE MATCHED DATA+UNMATCHED DATA FORM LEFT TABLE

 SELECT* FROM AccountMaster AS AM LEFT JOIN TxnMaster AS TM
 ON AM.ACID=TM.ACID
 left join ProductMaster AS PM
 ON PM.PID=AM.PID

 --List the	name of the account holdert with the product names
 --READ ONLY NAME AND PRODUNT NAME WITH INNER JOIN
 SELECT NAME,ProdcutName
 FROM AccountMaster AS AM JOIN ProductMaster AS PM
 ON AM.PID=PM.PID

  --Findout Customers name wise, thxntype wiese number of txns

  select*from AccountMaster as AM INNER JOIN TxnMaster AS TM
  ON AM.ACID=TM.ACID
--GROUP BY
   select NAME,TXN_TYPE,COUNT(*) AS NOOFTXNS 
   from AccountMaster as AM INNER JOIN TxnMaster AS TM
  ON AM.ACID=TM.ACID
GROUP BY NAME,TXN_TYPE

--No of tranction done inthe last month/year
  select*from TxnMaster

select NAME,TXN_TYPE,COUNT(*) AS NOOFTXNS 
  from AccountMaster as AM INNER JOIN TxnMaster AS TM
  ON AM.ACID=TM.ACID
  WHERE DATEDIFF(YY,DOT,GETDATE())=0--CURRENT YEAR
  GROUP BY NAME,TXN_TYPE

  --Txns done in 2023
  select NAME,TXN_TYPE,COUNT(*) AS NOOFTXNS 
  from AccountMaster as AM INNER JOIN TxnMaster AS TM
  ON AM.ACID=TM.ACID
  WHERE DATEPART(YY,DOT)=2023
  GROUP BY NAME,TXN_TYPE

  USE IBANK
  --List the names of the accountholders who deposit cash and their product name

select name,TXN_TYPE,ProdcutName
  from AccountMaster as AM INNER JOIN TxnMaster AS TM
    ON AM.ACID=TM.ACID 
	INNER JOIN ProductMaster AS PM
	ON PM.PID=AM.PID

-- WE NEED ONLY CASHDEPOSIT(CD)
select *
  from AccountMaster as AM INNER JOIN TxnMaster AS TM
    ON AM.ACID=TM.ACID
	INNER JOIN ProductMaster AS PM
	ON PM.PID=AM.PID
WHERE TXN_TYPE='CD'

--RETRIVE UNMATCHED ROWS
--WHO DIDNOT DO ANY TRANCTIONS

SELECT AM.ACID,NAME
from AccountMaster as AM LEFT JOIN TxnMaster AS TM
    ON AM.ACID=TM.ACID
	WHERE TNO IS NULL

--Cross Join--(IT IS USED TO CREATE DUMMY DATA)
--Syntax(T1 NO OF ROWS * T2 NO OF ROWS)

SELECT * FROM AccountMaster CROSS JOIN TxnMaster
--OR
SELECT * FROM AccountMaster,TxnMaster

 
--SELEF JOIN& IS NULL$COALEASCE

--SELF JOIN
--A self join is a regular join, but the table is joined with itself.
--CREATE SELF REFERENCIAL TABLE

CREATE TABLE EMP
(
EID INT  PRIMARY KEY,
NAME VARCHAR(20) NOT NULL,
MID INT  NULL FOREIGN KEY REFERENCES EMP(EID)
)

INSERT INTO EMP VALUES(1,'BILGATES',NULL)
INSERT INTO EMP VALUES(2,'JOHN',1)
INSERT INTO EMP VALUES(3,'BILEN',1)
INSERT INTO EMP VALUES(4,'SIMRAT',2 )
INSERT INTO EMP VALUES(5,'KRISHNA',3 )

SELECT*FROM EMP

--FINDOUT THE EMPLOYEE NAME AND THERI MANEGER

SELECT E1.NAME AS EMPNAME ,E2.NAME AS BOSS
 FROM EMP AS E1 JOIN EMP AS  E2 ON E2.EID=E1.MID

 SELECT E1.NAME AS EMPNAME ,E2.NAME AS BOSS
 FROM EMP AS E1  LEFT JOIN EMP AS  E2 ON E2.EID=E1.MID

 --Like operator
 --list the customers names whose name start with 'k'
 --first letter start with b
 select*from accountmaster
 where name like 'b%'  --first letter is b

 select*from accountmaster
 where name NOT like 'b%'  --EXCEPT first letter is b

 select*from accountmaster
 where name like '%B'  --LAST letter is b

 select*from accountmaster
 where name like '%B%'  --B MUST BE IN THE WORD IT ANY WHERE

 select*from accountmaster
 where name like '_A%'  --SECOND letter is A

 select*from accountmaster
 where name like 'V%R'  --Name start with V and end with R

  select*from accountmaster

  UPDATE AccountMaster
  SET CBAL=NULL
  WHERE ACID=110

  SELECT ACID,NAME,ISNULL(CBAL,0)AS BALANCE FROM AccountMaster

  ---WHOSE BALANCE IS NULL

  SELECT*FROM AccountMaster
  WHERE CBAL IS NULL

  SELECT*FROM AccountMaster
  WHERE CBAL IS  NOT NULL

  --INCREMENT THE 1000 FOR EVERY CUSTOMER

  UPDATE AccountMaster
  SET CBAL=CBAL+1000

  UPDATE AccountMaster
  SET CBAL =ISNULL (CBAL,0)+1000
  USE IBANK
  --COALESCE()FUNCTION
  --IT RETURN FIRST NON NULL VALUES

  SELECT COALESCE(NAME,BRID) AS TOTALCSETMRS FROM AccountMaster

  --Using Concate()function
  --introduced in 2012
  select concat(firstname,middlename,lastname) as fullname
  from EMP
  USE IBANK

 SELECT ACID,NAME,
 UPPER(NAME) AS UPPERNAME,
  LOWER(NAME) AS LRNAME,
  LEFT(NAME,4) AS FIRST4CHAR,
  RIGHT(NAME,4) AS LAST4CHAR,
  SUBSTRING(NAME,1,4) AS FIRST4LETTERS,
  LEN(NAME) AS LENGHTOFNAME,
  REVERSE(NAME) AS RNAME,
  LTRIM(NAME)AS TRINAME,
  RTRIM(NAME)AS TRINAME,
  LTRIM(RTRIM(NAME)) AS TRIMNAME,
  TRIM(NAME) AS TRIMNAME FROM AccountMaster

  UPDATE AccountMaster
  SET NAME=' JELLY BOJAPPA '
  WHERE ACID=100

  --CREATE TABLE

  CREATE TABLE Customer
  (
  CID      INT  PRIMARY KEY,
  NAME     VARCHAR(100)  NOT NULL,
  PHONENO  CHAR(10) NOT NULL CHECK(LEN(PHONENO)=10) UNIQUE,
  DOB      DATETIME  NOT NULL CHECK(DATEDIFF(YY,DOB,GETDATE()) >=21 AND DATEDIFF(YY,DOB,GETDATE())<=58)
  )

 
 INSERT INTO Customer  VALUES(1,'ABIJIT','7729060501','04/06/1992')
  INSERT INTO Customer  VALUES(2,'BOJAPPA','9652535856','04/10/1993')
    INSERT INTO Customer  VALUES(3,'RAJU','9652538695','04/10/1994')

	  INSERT INTO Customer  VALUES(4,'BOJAPPA','9652531111','04/10/1995')

	  SELECT*FROM Customer


--SUB STRING

SELECT ACID,NAME,
   SUBSTRING(NAME,1,4) AS NAME,
   REVERSE(NAME) AS REVERSENAME,
   SUBSTRING(REVERSE(NAME) ,1,5) AS LAST_5LETTERS
   FROM  AccountMaster


--STUFF(SOURCESTRING,START,LENGHT ,ADDSTRING)
SELECT ACID,NAME,
	STUFF(NAME,1,3,'USA ') AS NAME
	FROM AccountMaster

--REPLACE
SELECT ACID,NAME,
STUFF(NAME,1,3,'DATAMANTRA') AS STUFFNAME, --NO CONDITION
REPLACE(NAME,'EE','I') AS REPLACENAME  ---CONDITION BASED
FROM AccountMaster

--SPACE
--It gives us the space in between  string
Create table Employees
(
 ID int primary key,
 FirstName nvarchar(50)not null,
 LastName nvarchar(50) not null
 
)

insert into Employees values(1,'bhaskar','jogi')
insert into Employees values(3,'venkat','maggiga')
insert into Employees values(4,'suban','mulla')
insert into Employees values(5,'bojappa','jelly')

select*from Employees

--full name
select firstname +space(1)+lastname as fullname
from Employees

--CHARINDEX
----
--This function returns  the starting  of the spefied
--expression in a string
--It accepts three parameeters with the third
--parameeters being optional.

--syntax:
CHARINDEX(<<SEARCHINGLETTERS>>,<<COLNAME>>,<<STARTLOCATION>>,)
--It want find out position number for "space' in given string.

select charindex('w','hello world')

select name,charindex('b',name) as positionof_b
from AccountMaster
--In case AAA IS there it give first apprience position only
--or
select name,charindex('A',name) as positionof_b
from AccountMaster
where name like '%o%'

--Find the email id correct or not
--If it returns --invalid

select charindex('@','bojappgmail.com') as positionnumberof_@

CREATE TABLE Customer2
  (
  CID      INT  PRIMARY KEY,
  NAME     VARCHAR(100)  NOT NULL,
  PHONENO  CHAR(10) NOT NULL CHECK(LEN(PHONENO)=10) UNIQUE,
  DOB      DATETIME  NOT NULL CHECK(DATEDIFF(YY,DOB,GETDATE()) >=21 AND DATEDIFF(YY,DOB,GETDATE())<=58),
  email  varchar(100) not null check(charindex('@',email)<>0 and charindex('.',email)<>0)
  )

 
 INSERT INTO Customer2  VALUES(1,'ABIJIT','7729060501','04/06/1992','jbojappa@gmail.com')
  INSERT INTO Customer2  VALUES(2,'BOJAPPA','9652535856','04/10/1993','jbojappa@gmail.com')
    INSERT INTO Customer2  VALUES(3,'RAJU','9652538695','04/10/1994','jbojappa@gmail.com')

select*from Customer2
update Customer2
set email='geethkumar@gmail.com'
where cid=3

--PATINDEX

--Returns the starting position of the first occurance of a pattern
--in specified expression ,or zero if the pattern is not found

--syntax
--PATINDEX('%pattern%',expression)

--eg--

select patindex('%reach%',' all guys ensure that ,reach class on time')

--Outpue=23

--CASE Statement
----------------
/*The CASE expression goes through conditions and returns a value 
when the first condition is met (like an if-then-else statement).
So, once a condition is true, it will stop reading and return the result. 
If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL.*/
--By using Case statemnt we can write multiple conditions

select acid,name,cbal,
		case
		when cbal<5000 then 'silver'
		when cbal between 2000 and 15000 then 'gold'
		else 'Platinum'
		end as customertype
from AccountMaster

--StringAggrigation(How to concatenate rows)
--Concatenate rows 

Create table emp1
(
EID      INT  NOT NULL,
EMPNAME  VARCHAR(100) NOT NULL
)

INSERT INTO EMP1 VALUES(1,'BOJAPPA')
INSERT INTO EMP1 VALUES(1,'VISHNUKUMAR')
INSERT INTO EMP1 VALUES(2,'RAJESH')
INSERT INTO EMP1 VALUES(2,'MAHENDRA')
INSERT INTO EMP1 VALUES(3,'GOPAL')

SELECT*FROM emp1
--Concatenate ROWS

SELECT EID,STRING_AGG(EMPNAME,' ') AS EMPNAME
FROM emp1
GROUP BY EID

--Concatenate Columns

select eid, (Fname,'') +(lname,'') as fullname
from emp1


--BETWEEN operator(including 5000 and 7000 and between values)

/*The BETWEEN operator selects values within a given range. 
The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 

*/
select*from AccountMaster
where cbal between 5000 and 7000


--List the names of the customers who have oppened accounts
--between 2010 and 2012
select ACID,name
	from AccountMaster
	where datepart(YY,DOO) BETWEEN 2021 AND 2023

--CASESTATEMENT (INSTEAD OF IF AND ELSE it can be used in RDBMS)
--Syantax

/*
		SELECT Column1,Column2,
			Case
				WHEN <Expression> THEN <Constant>
				WHEN <Expression> THEN <Constant>
				....
				esle<Constant>
			END AS Alias
		From Table name

*/

Select acid,
		name,
		Customertype=
		CASE
			when cbal<1000 then 'silver'
			when cbal between 5000 and 50000 then 'gold'
			else 'dimand'
		END
		from AccountMaster
		/*
		without alis also working
		without else also working
		Wityout any expression also worikng no mandatory
		you can write more expression
		but CASE and END IS MANDATORY
		*/
select*from AccountMaster
select count(*) as totalcustomers from AccountMaster
--or
select totalcustomers=count(*)  from AccountMaster

/*
		SELECT EID,ENAME=
		CASE
			WHERN GENDER='M' THEN 'Mr'+name
			Else'Ms'+name
		END
		FROM EMP

*/

--Who has the highst amount int the bank
SELECT MAX(CBAL) FROM AccountMaster

--NULLIF () FUNCTION
/*Return a null value  if the two specified 
expressions are equal
-Else get the first value*/

select nullif(4,4) as rseult
 
select acid,name, nullif(cbal,ubal) as balance
from AccountMaster

--SubQuery
/*A Query in the where/selct/having clause
is called subquery or nestedquery

Subquery executin first Bottom to top
Always  sub query  gets executed  first and  the result  is passed 
to the outer query.
And then finally outerquey executed*/

--Note
-------
/* Use '=' operator
when subquery returns single value(single column)
Use 'IN' OPERATOR
When subquery returns multiple values from single columns
SQL SERVER DOESNOT SUPORT MULTIPLE COLUMNS IN SUB QUERY
*/

SELECT NAME
FROM AccountMaster
		WHERE CBAL= (SELECT MAX(CBAL) FROM AccountMaster)

--Databases

--2Types(TOTAL 32767 TABLES CAN STORE)
--System Database
--User Database
--MASTERDB
--MODELDB
--MSDB
--TEMPDB

--TABLES
--2Types
--system tables
--User tables

--system tables
--sys.tables
--sys.columns
--sys.tirggres

--User tables
--AMASTER
--EMPTABLES
...

-- TO FINDOUT ALL TABLES IN A DATABASE
SELECT*FROM SYS.TABLES

-- TO FINDOUT HOW MANEY TABLES IN A DATABASE

SELECT COUNT(*) AS NOOF_TABLES FROM SYS.TABLES

--GET COLUMNS OF AMMASTER TABLE

SELECT * FROM SYS.COLUMNS WHERE OBJECT_ID=34099162
--COUNT NO COLUMNS OF AMMASTER TABLE

SELECT  COUNT(*) FROM SYS.COLUMNS WHERE OBJECT_ID=34099162

--SUBQUEREY
SELECT*FROM SYS.COLUMNS
WHERE OBJECT_ID=(SELECT OBJECT_ID FROM SYS.TABLES WHERE NAME ='AccountMaster')

--All columns in a db

select*from	sys.columns where name='cbal'

--Check emp table are exist or not

select*from sys.tables where name='EMP'

--If you want to drop the table and create

if exists (select*from sys.tables where name='EMP')
	drop table emp

	--All database names
	select*from sys.databases

	--If exists u drop it
	if exists (select*from sys.databases where name='xyx'
		drop database xyx

--If not there create it

if not exists (select*from sys.databases where name='xyx'
	create database xyx

--All SP
SELECT* FROM SYS.PROCEDURES

--ALL Triggers

select*from sys.triggers


SELECT 'drop table '+ name FROM SYS.tables

SELECT 'SELECT * FROM '+ name+'WHERE ' FROM SYS.tables


--Derivied tables(Derived table must has a alies)
--List the ACID,Name and Noof txns where the account holders has
--done more than 3 tranctions for the year 2023
SELECT*FROM AccountMaster
SELECT*FROM(SELECT*FROM AccountMaster) AS K
--Boath are same but in second we can write mulitple querys


--firststep
 select acid,count(*) as NOOFTXNS
		 from TxnMaster
		 where datepart(YY,DOT)=2023
		 GROUP BY ACID

select a.ACID,NAME,NOOFTXNS
FROM AccountMaster AS a
         join
		 (
		 select acid,count(*) as NOOFTXNS
		 from TxnMaster
		 where datepart(YY,DOT)=2023
		 GROUP BY ACID
		 ) AS K
		 ON a.ACID =k.ACID

 --We write a query using joins for the samw quetions

 select A.acid,name,count(*) as nooftxn
from AccountMaster as A JOIN TxnMaster AS T
ON A.ACID=T.ACID
WHERE DATEPART(YY,DOT)=2023
GROUP BY A.acid,name
		 ---

select*from Customer2

INSERT INTO Customer2 VALUES(4,'KUMAR',77258565821,12/12/2020,

		 alter table Customer2
		 add  dos date
UPDATE Customer2
SET DOS ='10/11/2023'
WHERE CID=3
--To find latest customers
select* from LATESTSALE
--1st step
select cid from LATESTSALE
group by cid

--After groupding get the minimudate using aggrigation fun
select cid ,min(dos) as minimumdate from LATESTSALE
group by cid

--USE DERIVED TABLE
SELECT * FROM(
select cid ,min(dos) as minimumdate from LATESTSALE
group by cid
) AS BOJA

--But i ndee monthname and count newcustomers
SELECT datename(mm,minimumdate) as monthnames,count(*) as newtotal
FROM
	(
		select cid ,min(dos) as minimumdate from LATESTSALE
		group by cid
	) AS BOJA
	group by datename(mm,minimumdate)



 --Qube and rolleup operator

 --find the employees with salary higher than their department average

 create table employeeinfo
 (
 EID      INT   PRIMARY KEY,
 EMPNAME   VARCHAR(50)  NOT NULL,
 SALARY    MONEY   NOT NULL,
 DEPTNAME  VARCHAR(25)
 )

 INSERT INTO employeeinfo VALUES(1,'JOHAN',10000,'HR')
  INSERT INTO employeeinfo VALUES(2,'GIRISH',12000,'SALES')
 INSERT INTO employeeinfo VALUES(3,'MANNAT',10000,'SALES')
 INSERT INTO employeeinfo VALUES(4,'RATAN',8000,'HR')
 INSERT INTO employeeinfo VALUES(5,'SALMAN',14000,'HR')
 INSERT INTO employeeinfo VALUES(6,'PEETER',11000,'SALES')
 INSERT INTO employeeinfo VALUES(7,'JOHAN',10000,'HR')
 INSERT INTO employeeinfo VALUES(8,'JOHAN',10000,'HR')
 INSERT INTO employeeinfo VALUES(9,'JOHAN',10000,'HR')

 SELECT*FROM employeeinfo
 --FINDOUT AVG SALARY DEPTMENT WIESE
 SELECT DEPTNAME,AVG(SALARY) AS AVGSALRY
 FROM employeeinfo
 GROUP BY DEPTNAME


 --To findout who are the salary higher then the dept average

 SELECT*FROM 
 employeeinfo AS E JOIN
 (
	 SELECT DEPTNAME,AVG(SALARY) AS AVGSALRY
	 FROM employeeinfo
	 GROUP BY DEPTNAME
	 ) AS E2 ON E.DEPTNAME=E2.DEPTNAME
	 WHERE SALARY >AVGSALRY

--CUBE OPERATOR

CREATE TABLE ITEM
(
IETM VARCHAR(30) NOT NULL,
COLOUR  VARCHAR(10) NOT NULL,
QTTY  INT  NOT NULL
)

INSERT INTO ITEM VALUES('CHAIR','BLACK',10)
INSERT INTO ITEM VALUES('CHAIR','RED',15)
INSERT INTO ITEM VALUES('TABLE','BLACK',20)
INSERT INTO ITEM VALUES('CHAIR','BLACK',20)
INSERT INTO ITEM VALUES('CHAIR','BLACK',30)
INSERT INTO ITEM VALUES('TABLE','RED',30)

SELECT* FROM ITEM

--TOTAL QTTY
SELECT SUM(QTTY) AS TOTALQTT FROM ITEM
--TOTAL QTTY FOR CHAIRS
SELECT SUM(QTTY) AS TOTALQTT FROM ITEM WHERE IETM='CHAIR'

--ITEM WISE COLOUR WIESE TOTAL QTT

SELECT IETM,COLOUR,SUM(QTTY) AS TOTALQTT 
FROM ITEM 
GROUP BY IETM,COLOUR

--WITH QUBE(Multi dimentional analysis all permitation and combinations)
--ITEM WISE COLOUR WIESE TOTAL QTT
SELECT IETM,COLOUR,SUM(QTTY) AS TOTALQTT 
FROM ITEM 
GROUP BY IETM,COLOUR WITH CUBE

--WITH ROLLUP ONLY SOMEPERMITATIONS

SELECT IETM,COLOUR,SUM(QTTY) AS TOTALQTT 
FROM ITEM 
GROUP BY IETM,COLOUR WITH ROLLUP


--Ranking functions and CTE (Coman table expression)

--ROW_NUMBER(Always rownumber startwith 1) 
--you can take any one of the column

SELECT ACID,NAME,CBAL , ROW_NUMBER () OVER (ORDER BY  ACID) AS RNO
FROM AccountMaster
-- you can use ascending and descending order

SELECT ACID,NAME,CBAL ,BRID, ROW_NUMBER () OVER (ORDER BY  ACID desc) AS RNO
FROM AccountMaster

--To get the 5th row(USE WITH DERIVIED TABLE)

select*from
(
SELECT ACID,NAME,CBAL ,BRID, ROW_NUMBER () OVER (ORDER BY  ACID) AS RNO
FROM AccountMaster
) as K
WHERE RNO=5

--To get branch wise rownumber
--we should use Partition by clause

select
ACID,NAME,CBAL ,BRID, ROW_NUMBER () OVER (PARTITION BY BRID ORDER BY  ACID) AS RNO
FROM AccountMaster

--To get 1 Rowno from each branch

select*from
(
select ACID,NAME,CBAL ,BRID, ROW_NUMBER () OVER (PARTITION BY BRID ORDER BY  ACID) AS RNO
FROM AccountMaster
) as K
WHERE RNO=1

--to get every 5th row,Alternate rows(5,10,15,,.......)

select*from
(
SELECT ACID,NAME,CBAL ,BRID, ROW_NUMBER () OVER (ORDER BY  ACID) AS RNO
FROM AccountMaster
) as K
WHERE RNO%5=0

--RANK()
--IT Gives gap between rank

 
--Dense_Rank() its no gap
select acid,name,cbal,brid,dense_Rank() over(order by cbal desc) as Rankno
from AccountMaster

--differenct of boath

select acid,name,cbal,brid,
					Rank() over(order by cbal desc) as Rankno,
					dense_Rank() over(order by cbal desc) as D_Rankno
from AccountMaster

--Whose having haighest balance of the bank
select*from
(
	select acid,name,brid,DENSE_RANK() over(order by cbal desc) as Rankno
		from AccountMaster
) as k
where Rankno=1

--second haighest/rank balance of the bank
select*from
	(
		select acid,name,cbal,brid, 
		dense_rank() over(order by cbal asc) as Rankno
		from accountmaster
	) as k
	where Rankno=2


--Partition by
--Ranking
select*from
(
select acid,name,cbal,brid,
DENSE_RANK() over(partition by brid order by cbal desc) as drankno
from AccountMaster
) as k

--To get branch wiese highest balance

select*from
(
	select acid,name,cbal,brid,
	DENSE_RANK() over(partition by brid order by cbal desc) as drankno
	from AccountMaster
) as k
where drankno=1

--To get branch wiese second_highest balance

	select*from
	(
	select acid,name,cbal,brid,DENSE_RANK() over(partition by brid order by cbal desc) as drankno
	from AccountMaster
	) as k
	where drankno=2

--NTILE()
--It can divided the whole members into two groups 
--If total customers is 100 it divede two groups 50+50 
--EVERY Group no startwith 1

--For two groups
select acid,name,cbal,brid, NTILE(2) OVER(ORDER BY ACID ASC) AS GROUPNO
FROM AccountMaster

--For three groups
select acid,name,cbal,brid, NTILE(3) OVER(ORDER BY ACID ASC) AS GROUPNO
FROM AccountMaster

--I want to get the group no 1 only
select*from
 (
		select acid,name,cbal,brid, NTILE(3) OVER(ORDER BY ACID ASC) AS GROUPNO
		FROM AccountMaster
 ) as k
where groupno=1

--With in the branch partition by

	select acid,name,cbal,brid,ntile(3) over (partition by brid order by acid asc) as GROUPNO
	FROM AccountMaster

--TO GET EVERY BRANCH GROUP 1 ONLY
	select*from
	(
	select acid,name,cbal,brid,ntile(3) over (partition by brid order by acid asc) as GROUPNO
	FROM AccountMaster
	) AS K
	WHERE GROUPNO=1

--CTE (COMMON TABLE EXPRESSION) It is similar to Derivied table

	with k
	as
	(
	SELECT ACID,NAME,CBAL ,BRID, ROW_NUMBER () OVER (ORDER BY  ACID) AS RNO
FROM AccountMaster
	)
	select*from k where rno=5

	--CTE VS DERIVEDTABLES

--Findout the Branch which has highest number of customers

---DERIVED TABLE ARE VERY SLOW
--1step
--TABLE
select BRID,COUNT(*) AS CNT
FROM AccountMaster
GROUP BY BRID
--To find max of branch

select max(CNT)
FROM   (
		SELECT BRID,COUNT(*) AS CNT
		FROM AccountMaster
		GROUP BY BRID
		)
	 AS BOJA
	 
--I Need Max Branch ID(DERIVIED TABLE)SELECT BRID
--BELOW NOT WORKIN IN DERIVED
--NOT POSSIBLE TO REUSE TABLE NAME

SELECT BRID
    (
	SELECT BRID,COUNT(*) AS CNT
	FROM AccountMaster
	GROUP BY BRID
	) AS BOJA
	WHERE CNT=(
	select max(CNT)
	FROM BOJA   )

--ITS WORKING AND ITS NOT STORED IN ANY WHERE

SELECT BRID
	FROM(
		SELECT BRID,COUNT(*) AS CNT
		FROM AccountMaster
		GROUP BY BRID
	) AS BOJA
WHERE CNT=(
		   select max(CNT)
		   FROM
		        (
				SELECT BRID,COUNT(*) AS CNT
				FROM AccountMaster
				GROUP BY BRID
			)
		 AS BOJA )
	 <--YOU CAN GIVE ANY NAME NOT SAME NAME HERE
	 )         --NO RE USIBLITY IN DERIVED TABLE AGAIN BOJA TABLE
	 ---WE SHOULD CREATE NEW TABLE WITH SAME NAME ALSO WORKING

	 --Now CTE
	 --TABLE WITH CTE
	 --1St step
	 SELECT BRID,COUNT(*) AS CNT
		FROM AccountMaster
		GROUP BY BRID
	--CTE
	WITH BOJA
	AS(
	    SELECT BRID,COUNT(*) AS CNT
		FROM AccountMaster
		GROUP BY BRID
	)
	SELECT*FROM BOJA	                  
	WHERE CNT=(SELECT MAX(CNT) FROM BOJA)
	 --WE CAN RE USE TABLE BOJA ABOVE QUERY
	 --DECLARE ONECE USE MANY TIMES
	--I Need Max Branch ID(CTE)
	--RE USE ONLY IN SINGLE QUERY
	 WITH BOJA
	AS(
	    SELECT BRID,COUNT(*) AS CNT
		FROM AccountMaster
		GROUP BY BRID
	)
	SELECT BRID FROM BOJA	                  
	WHERE CNT=(SELECT MAX(CNT) FROM BOJA) 

	--THESE ABOVE TABLE BOJA IS STORED IN TEMPDB

	--Temp table are two types
	--Local TEMP TABLE(#) followed by any name--it will not work in newwindow
	--Global temp table(##)--it will work in new window u can call
	select BRID,COUNT(*) AS CNT
	FROM AccountMaster
	GROUP BY BRID

	--Temp table CREATED WITH HELP OF #
	select BRID,COUNT(*) AS CNT INTO #BOJA
	FROM AccountMaster
	GROUP BY BRID

	SELECT* FROM #BOJA
	--#BOJA IS TEMPTABLE
	SELECT MAX(CNT) FROM #BOJA
	/* Temp table is used reused manytimes/multiple times quers
	but CTE IS Reuse only onequey or within the query
	-- */

	--TO GET MAX BRID or 1st mx
	SELECT BRID
	FROM #BOJA WHERE CNT=(SELECT MAX(CNT) FROM #BOJA)

	SELECT*FROM #BOJA

		--TO GET 2nd MAX BRID 
	
	SELECT BRID
	FROM #BOJA WHERE CNT=(
	SELECT MAX(CNT) FROM #BOJA where cnt<(SELECT MAX(CNT) FROM #BOJA)
	)
	--it will be stored upt seeeion closed once session closed it removed from temp db

	/*
	Derived tables
	---------------
	Create once
	Use once
	Scope:Single Query

	CTE
	---------------
	Create once
	Use Many times
	Scope:Single Query/Within the query

	Local Temp table(#)
	---------------
	Create once
	Use Many times
	Scope:Window level single window

	Global Temp table(##)
	---------------
	Create once
	Use Many times
	Scope:Window level u can call new another window 
	*/

--To Get the  Duplicates with CTE Is very easy
create table boja
(
name varchar(20)
)

insert into boja values('BOJA')

SELECT*FROM BOJA
--We can see the who have duplecates
use ibank
SELECT NAME, COUNT(*) AS TOTAL
FROM BOJA
GROUP BY NAME
HAVING COUNT(*)>1

--Using Distinct
--Display the unique values but not show the duplicate values

select distinct name from boja

--Write a query to delete duplicate rows fro the bohth table
--Using CTE

--st step
WITH DUPROW
AS
(
SELECT NAME,ROW_NUMBER() OVER (PARTITION BY NAME ORDER BY NAME) AS RNO
FROM BOJA
)
SELECT*FROM DUPROW where RNO>1

--Now delete Duplicate rows

WITH DUPROW
AS
(
SELECT NAME,ROW_NUMBER() OVER (PARTITION BY NAME ORDER BY NAME) AS RNO
FROM BOJA
)
DELETE FROM DUPROW where RNO>1

--RUNNING TOTAL(1000,20000,3000...1000incr)
--Instead of using ranking function
--using windo functions you cantake any one column in orderby
select acid,name,cbal,sum(cbal) over(order by acid asc) as running_total
from AccountMaster

--Branch wies
select acid,name,cbal,BRID,
SUM(CBAL) OVER (PARTITION BY BRID ORDER BY ACID ASC) AS RUNNING_TOTAL
FROM AccountMaster

--WE CAN USE JOINS,SUBQUERS IN RUNNINGTOTAL

CREATE TABLE EM
(
EID   INT ,
NAME  VARCHAR(20),
GENDER CHAR(1)
)

INSERT  INTO EM VALUES(1,'GEETA','F')
INSERT  INTO EM VALUES(2,'GEETA','F')
INSERT  INTO EM VALUES(3,'GEETA','F')
INSERT  INTO EM VALUES(4,'GEETA','F')
INSERT  INTO EM VALUES(5,'GEETA','F')
INSERT  INTO EM VALUES(6,'GEETA','F')

SELECT * FROM EM
 --UPDATE WHERE THERE IS MALE TO FEMALE AND FEMALE TO MALE

UPDATE EM
SET GENDER= CASE  WHEN GENDER='M' THEN 'F'
WHEN GENDER='F' THEN 'M' END

SELECT * FROM EM

--MERGE STATEMENT
--Create DB
IF EXISTS (SELECT*FROM SYS.DATABASES WHERE NAME='MergeDB')
Drop database MergeDB

create database MergeDB
USE MERGEDB

--MERGE STATEMENTS
--SOURCE TABLE CREAT
Create table Emp
(eid  int primary key,
name varchar(100) not null,
salary money  not null
)

insert into emp values(1,'BOJAPPA',6000)
insert into emp values(2,'BOJAPPA',4000)
insert into emp values(3,'BOJAPPA',6500)
insert into emp values(4,'RAJISH',4050)
INSERT INTO EMP VALUES(5,'GIRI',10000)
INSERT INTO EMP VALUES(2,'VENKEY',3000)
INSERT INTO EMP VALUES(6,'BOJAPPA',9000)

UPDATE EMP 
SET SALARY=11111
WHERE EID=1
SELECT*FROM emp
--DESTINATION TABLE

Create table Destemp
(eid  int primary key,
name varchar(100) not null,
salary money  not null
)


SELECT*FROM emp
SELECT*FROM Destemp

--Syntax 

Merge Destemp as D
USING EMP AS S ON S.EID=D.EID

WHEN NOT MATCHED BY TARGET  --(SOURCE VALUES NOT MATCHED IN TARGET IT WILL INSERTED ITS LIKE NEW ROW)
THEN INSERT(EID,NAME,SALARY) VALUES (S.EID,S.NAME,S.SALARY)

WHEN MATCHED AND D.NAME <>S.NAME OR D.SALARY<>S.SALARY--EID MATCHED BUT NAME AND SALARY CHANGED THEN UPDATED
THEN UPDATE SET D.NAME=S.NAME,D.SALARY=S.SALARY

WHEN NOT MATCHED BY SOURCE --WHEN THE SOURCE ROW DELETED TARGED ROWS COMPERED WITH SOURCE TABLE 
THEN DELETE;

SELECT*FROM emp
SELECT*FROM Destemp

DELETE FROM EMP WHERE EID=4

--add column

alter table Destemp
add insert_update_time datetime

delete FROM Destemp


Merge Destemp as D
USING EMP AS S ON S.EID=D.EID

WHEN NOT MATCHED BY TARGET  --(SOURCE VALUES NOT MATCHED IN TARGET IT WILL INSERTED ITS LIKE NEW ROW)
THEN INSERT(EID,NAME,SALARY,insert_update_time) VALUES (S.EID,S.NAME,S.SALARY,getdate())

WHEN MATCHED AND D.NAME <>S.NAME OR D.SALARY<>S.SALARY--EID MATCHED BUT NAME AND SALARY CHANGED THEN UPDATED
THEN UPDATE SET D.NAME=S.NAME,D.SALARY=S.SALARY,D.insert_update_time=GETDATE()

WHEN NOT MATCHED BY SOURCE --WHEN THE SOURCE ROW DELETED TARGED ROWS COMPERED WITH SOURCE TABLE 
THEN DELETE;

SELECT*FROM emp
SELECT*FROM Destemp

--ADD TAX WITH DEFAULT VALUE

alter table Destemp
add TAX INT 

DELETE FROM Destemp


Merge Destemp as D
USING EMP AS S ON S.EID=D.EID

WHEN NOT MATCHED BY TARGET
THEN INSERT(EID,NAME,SALARY,insert_update_time,TAX) VALUES (S.EID,S.NAME,S.SALARY,getdate(),18)

WHEN MATCHED AND D.NAME <>S.NAME OR D.SALARY<>S.SALARY
THEN UPDATE SET D.NAME=S.NAME,D.SALARY=S.SALARY,D.insert_update_time=GETDATE()

WHEN NOT MATCHED BY SOURCE 
THEN DELETE;

SELECT*FROM Destemp
--VIEWS
--VIEW CANNOT STORE THE DATA 
USE IBANK
--CREATE VIEW SYNTAX
CREATE VIEW BRICUSTOMERS
AS 
SELECT*FROM AccountMaster
WHERE BRID='BR1'

--READ VIEW
--To findouut to  view easy to give view name start like V-BOJA
SELECT*FROM BRICUSTOMERS
SP_HELP

--TO GET THE SCHEME OF VIEW

--SP_HELPTEXT<VIEWNAME/PROCNAME/FUNCTION NAME)
SP_HELPTEXT BRICUSTOMERS

--VIEW ALTER
ALTER VIEW BRICUSTOMERS
AS
SELECT ACID,NAME,DOO,UBAL,CBAL FROM AccountMaster
WHERE BRID='BR1'

SELECT*FROM BRICUSTOMERS

SP_HELPTEXT BRICUSTOMERS

CREATE VIEW BR1CUSTOMERS  
AS  
SELECT ACID,NAME,DOO,UBAL,CBAL FROM AccountMaster  
WHERE BRID='BR1'  

--WE CAN DROP THE VIEW ALSO

DROP VIEW BRICUSTOMERS

--Can I insert/Update/Delete Data  using view in a table
--ans  Yes
--Inserting the data by using view
--syntax
 
--INSERT INTO <VIEWNAME> VALUES (V1,V2,V31,.....)

-- Update data  in a table  using view
/*UPDATE <VIEWNAME>
SET
WHERE*/
 
 --Delete data using a view
 --Delete
-- from <view name>

--BRANCH WISE DATA

CREATE VIEW BRANCH_WIESE_DATA
AS
SELECT BRID,SUM(CBAL) AS TOTAL
FROM AccountMaster
GROUP BY BRID


--IN ABOVE VIEW WE CANNOT INSERT/UPDATE/ DATA
/*VIEWS ARE TWO TYPES
1)UPDATABLE--
2)NONUPDATBLE--WHEN VIEW CONTAIN AGGREGATION FUNDTION AND 
LESS NO OF COLUMNS THAN THE BASE TABLE
*/

/*STORE PROCEDURES
A stored procedure is a prepared SQL code that you can save, 
so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, 
save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, 
so that the stored procedure can act based on the parameter value(s) that is passed.
*/
USE IBANK

--Create Sample Procedure(SP)

Create proc Welcome
AS
BEGIN
	PRINT'Welcome to GoOnline class'
	PRINT'Call for more details+91 7729060501'
END

EXEC Welcome
--OR
EXECUTE Welcome
--OR(BUT NOT GOOD)
WELCOME

--IF YOU Want drop the proc 

DROP PROC Welcome

--TO FIND A SYNTAX OF SP
--SP_HELPTEXT <SP/VIEW/FUNCTION>

SP_HELPTEXT WELCOME

--Create a sp with 1 input parameeter

CREATE PROC GetBalance
(
	@ACID INT
)
AS 
BEGIN
	SELECT CBAL FROM AccountMaster
	WHERE ACID=@ACID
END
--CALL SP
EXEC GetBalance 102

--Create a sp with 1 input parameeter(with default value)
--if ur not given input value it take defalt value what u mentiond in inputparameteer

ALTER PROC GetBalance
(
	@ACID INT=100
)
AS 
BEGIN
	SELECT CBAL FROM AccountMaster
	WHERE ACID=@ACID
END
--CALL SP

EXEC GetBalance

--ADD MORE PARAMETERS AND VARIABLES
--WHAT ARE THE WIH IN THE (  ) IS PARAMETERS  
--BETWEEN BEGIN AND END ARE VARIABLES

ALTER PROC GetBalance
(
	@ACID INT=100,
	@BAL MONEY OUT,
	@NAME VARCHAR(100) OUT
)
AS 
BEGIN
	SELECT @BAL=CBAL ,@NAME=NAME FROM AccountMaster
	WHERE ACID=@ACID
END
--CALL SP
DECLARE @BALANCE MONEY
DECLARE @NAME VARCHAR(100)
EXEC GetBalance 100,@BALANCE OUT,@NAME OUT
print @BALANCE
PRINT @NAME

--USE IF AND ELSE STATEMENTS IN SP

ALTER PROC GetBalance
(
	@ACID INT=100 ,
	@BAL MONEY OUT,
	@NAME VARCHAR(100) OUT
)
AS 
BEGIN
	DECLARE @CNT INT
	SELECT @CNT = COUNT(*) FROM AccountMaster
	WHERE ACID=@ACID
	IF @CNT=0
		BEGIN
			PRINT'Invalid account number please check'
		END
	ELSE
		BEGIN
			SELECT @BAL=CBAL ,@NAME=NAME FROM AccountMaster
			WHERE ACID=@ACID
		END

END


--CALL SP
DECLARE @BALANCE MONEY
DECLARE @NAME VARCHAR(100)
EXEC GetBalance 100,@BALANCE OUT,@NAME OUT
print @BALANCE
PRINT @NAME

--42 VIDMISSED--

--TRIGGERS(NEED TO WRITE NOTES)

select*from sys.triggers
select*from sys.objects
select*from sys.objects where object_id

--syntax of trigger
/*
CREATE TRGGER<TRIGGER NAME>
ON <TABLENAME>
<TYPE><INSERT,UPDATE,DELETE>
AS
BEGIN
--CODE
END
GO
*/

--TWO TYPES
--AFTER(OR)FOR
--INSTEADOF

-- NOW AFTERTRIGGER
--Trgiiers can create magic tables insert and update tablws old and new in ram
Create trigger trg_Updatebalance
on TxnMaster
AFTER insert,update,delete --you can give all or any one any two i,u,d
as
begin
		declare @acid int
		declare @txn_type char(3)
		declare @txn_amount money
		declare @status  char(1)
	--1st check the status of thd AC holder
	--get the customer info

	select @acid=acid,@txn_type=txn_type,@txn_amount=txn_amount from Inserted
	--2.get the customers status
	select @status =status from AccountMaster where acid=@acid
	
	if(@status='C' OR @status='I')
		BEGIN
			PRINT 'YOUR ACCOUNT IS CLOSED,YOUCANNOD DO ANY TXNS'
		END
end


--Alter trigger 
Alter trigger trg_Updatebalance
on TxnMaster
AFTER insert,update,delete --you can give all or any one any two i,u,d
as
begin
		declare @acid int
		declare @txn_type char(3)
		declare @txn_amount money
		declare @status  char(1)
	--1st check the status of thd AC holder
	--get the customer info
	select @acid=acid,@txn_type=txn_type,@txn_amount=txn_amount from Inserted
	--2.get the customers status
	select @status =status from AccountMaster where acid=@acid
	--3 validate
		if(@status='C' OR @status='I')
			BEGIN
				PRINT 'YOUR ACCOUNT IS CLOSED,YOUCANNOD DO ANY TXNS'
				rollback
			END
				--UPDATED BALANCE IN AMTABLE
				--CD

			 IF(@txn_type= 'CD')
			  Begin
				UPDATE AccountMaster
				set cbal=cbal+@txn_amount
				where acid=@acid
			End
	--UPDATED withdrawBALANCE IN AMTABLE
	--CW
		IF(@txn_type= 'CW')
			Begin
				UPDATE AccountMaster
				set cbal=cbal - @txn_amount
				where acid=@acid
			End
end


SELECT*FROM SYS.TRIGGERS
--TO FIND WHICH TRIGGER ON WHICH TABLE?
SELECT*FROM SYS.TRIGGERS WHERE OBJECT_ID='338100245'
--OR
SELECT*FROM SYS.TRIGGERS 
WHERE OBJECT_ID=(SELECT parent_id FROM SYS.TRIGGERS WHERE object_id=1483152329)



--ASSMENment 14 in csestude apply

Alter trigger trg_Updatebalance
on TxnMaster
AFTER insert,update,delete --you can give all or any one any two i,u,d
as
begin--1
		declare @acid int
		declare @txn_type char(3)
		declare @txn_amount money
		declare @status  char(1)
		declare @cbal  money
		--1st check the status of thd AC holder
			--get the customer info
		select @acid=acid,@txn_type=txn_type,@txn_amount=txn_amount from Inserted
				--2.get the customers status
		select @status =status from AccountMaster where acid=@acid
					--3 validate
			if(@status='C' OR @status='I')
			BEGIN
				PRINT 'YOUR ACCOUNT IS CLOSED,YOUCANNOD DO ANY TXNS'
				rollback
			 END
				--UPDATED BALANCE IN AMTABLE
				--CD
		ELSE
			BEGIN--a
					 IF(@txn_type= 'CD')
					  Begin--b
						UPDATE AccountMaster
						set cbal=cbal+@txn_amount,UBAL=UBAL+@txn_amount
						where acid=@acid
					 End--b
				--CQD
					IF(@txn_type= 'CQD')
					  Begin--c
						UPDATE AccountMaster
						set UBAL=UBAL+@txn_amount
						where acid=@acid
					  End--c
					--UPDATED withdrawBALANCE IN AMTABLE
						--CW
				  IF(@txn_type= 'CW')
					Begin--d
						---Check customer funds
						select @cbal=cbal from AccountMaster where acid=@acid
							if (@cbal>=@txn_amount)
								begin--e
									UPDATE AccountMaster
									set cbal=cbal - @txn_amount,UBAL=UBAL-@txn_amount
									where acid=@acid
								end--e
								else
									begin--f
										print'No sufficient funds in your account'
										rollback

									end--f
					End--d
			END--a
end--1


-- TO WRITE not allo for morethan 5 txns in a month

Alter trigger trg_Updatebalance
on TxnMaster
AFTER insert,update,delete --you can give all or any one any two i,u,d
as
begin--1
		declare @acid int
		declare @txn_type char(3)
		declare @txn_amount money
		declare @status  char(1)
		declare @cbal  money
		declare @nooftxn int
		--1st check the status of thd AC holder
			--get the customer info
		select @acid=acid,@txn_type=txn_type,@txn_amount=txn_amount from Inserted
				--2.get the customers status
		select @status =status from AccountMaster where acid=@acid
		--Findout the no of txn in the current monthe
		select @nooftxn=count(*) from TxnMaster where acid=@acid
			--3 validate
			if(@status='C' OR @status='I')
			BEGIN
				PRINT 'YOUR ACCOUNT IS CLOSED,YOUCANNOD DO ANY TXNS'
				rollback
			 END
			 else 
			 if (@nooftxn<=5)
	BEGIN--G
			 	--UPDATED BALANCE IN AMTABLE--14ASSMNT
				--CD
			
				BEGIN--a
							 IF(@txn_type= 'CD')
							  Begin--b
								UPDATE AccountMaster
								set cbal=cbal+@txn_amount,UBAL=UBAL+@txn_amount
								where acid=@acid
							 End--b
						--CQD
							IF(@txn_type= 'CQD')
							  Begin--c
								UPDATE AccountMaster
								set UBAL=UBAL+@txn_amount
								where acid=@acid
							  End--c
							--UPDATED withdrawBALANCE IN AMTABLE
								--CW
						  IF(@txn_type= 'CW')
						Begin--d
								---Check customer funds
								select @cbal=cbal from AccountMaster where acid=@acid
									if (@cbal>=@txn_amount)
										begin--e
											UPDATE AccountMaster
											set cbal=cbal - @txn_amount,UBAL=UBAL-@txn_amount
											where acid=@acid
										end--e
										else
											begin--f
												print'No sufficient funds in your account'
												rollback

											end--f
							End--d
					END--a
		END--G
		ELSE
			BEGIN--F
			Print ' You have already done morethan 5 txns in this month'
			rollback

			END--F
end--1


--INSTEAD OF TRIGGER
--it created on TABLE AND Views 
--max create for(insert,update,delete)

SELECT*INTO Hightxnmaster FROM TxnMaster 
where 1=0

select *from Hightxnmaster
from inserted
--Create trigger

Create trigger trig_Highvaluetxns
on TxnMaster
instead of insert,update,delete
as 
begin
	declare @DOT date
	declare @ACID int
	declare @BRID CHAR(3)
	declare @TXN_TYPE CHAR(3)
	declare @CHQ_NO INT
	declare @CHQ_DATE SMALLDATETIME
	declare @TXN_AMOUNT MONEY
	declare @USERID INT


	--get customer info

	select @DOT=DOT ,@ACID=ACID,@BRID=BRID ,@TXN_TYPE=TXN_TYPE ,@CHQ_NO=CHQ_NO,@CHQ_DATE=CHQ_DATE,
	@TXN_AMOUNT=TXN_AMOUNT ,@USERID=USERID
	from inserted
	--TXN Amount >50000
	--stored the data into hitxnmaster
	if(@TXN_AMOUNT>=50000)
	begin
	insert into Hightxnmaster values( @DOT,@ACID,@BRID,@TXN_TYPE,@CHQ_NO,@CHQ_DATE,@TXN_AMOUNT,@USERID)
	end

	ELSE
		begin
		insert into TxnMaster values( @DOT,@ACID,@BRID,@TXN_TYPE,@CHQ_NO,@CHQ_DATE,@TXN_AMOUNT,@USERID)
		end

end

SELECT*FROM AccountMaster
SELECT*FROM TxnMaster
SELECT*FROM Hightxnmaster

INSERT INTO TxnMaster VALUES(GETDATE(),101,'BR1','CW',NULL,NULL,10000,2)
