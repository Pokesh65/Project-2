select * from System.products;
select prod_name,decode (prod_name,'Porur','Chennai','Oor')as Decode from System.products;

insert into System.products(prod_name)values('moulivakkam');

update System.products set prod_name='Mothish' where prod_id=102;

delete System.products where prod_id=103;