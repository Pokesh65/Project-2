create TABLE marksheet(
Id NUMBER(3),
Std_name varchar(20),
Subject VARCHAR(40),
Register_date TIMESTAMP DEFAULT systimestamp,
Update_dt TIMESTAMP
);

desc marksheet;

ALTER TABLE marksheet MODIFY Id PRIMARY key;
alter table marksheet add total_mark NUMBER(3);
alter table marksheet MODIFY Update_dt default systimestamp;

insert into marksheet(Id,Std_name,Subject) values(7,'Selva','computer science');

UPDATE marksheet set Std_name='Ganesh',Subject='Csc' where Id=3;
UPDATE marksheet set Std_name='Dinesh',Subject='Programmer' where Id=7;

select * from marksheet;
DELETE FROM marksheet WHERE Id=3;

select Subject from marksheet;

select DISTINCT Subject from marksheet;

select * from marksheet;

