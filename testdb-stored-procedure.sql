drop table Pokeshh;
drop table Gokull;

create TABLE Gokull(
 GokullId Number,
 GokullName VARCHAR2(30),
 CONSTRAINT Gokull_pk PRIMARY KEY(GokullId)
);


create Table Pokeshh(
GokullId Number,
Pokeshhription varchar2(60),
Number_of_sales Number(9),
CONSTRAINT Pokeshh_fk FOREIGN KEY (GokullId) REFERENCES Gokull (GokullId)ON DELETE CASCADE  
);


INSERT INTO Gokull VALUES (11,'HL Road Frame-Black,58');
INSERT INTO Gokull VALUES (12,'HL Road Frame-RED,58');
INSERT INTO Gokull VALUES (13,'Sport-100 Helmet,Red');



INSERT INTO Pokeshh VALUES (11,'Replacement Mountain Wheel
for Entry level rider' , 800);
INSERT INTO Pokeshh VALUES (12,'Sturdy alloy features a quick-release hub' , 900);
INSERT INTO Pokeshh VALUES (13,'Aerodynamic rims for smooth riding' , 600);


CREATE OR REPLACE PROCEDURE GetProducDesc
IS
    CURSOR cur IS
        SELECT P.GokullId, P.GokullName, PD.Pokeshhription
        FROM Pokeshh PD
        LEFT JOIN Gokull P
        ON PD.GokullId = P.GokullId;
    rec cur%rowtype;

BEGIN
    FOR rec in cur LOOP
        dbms_output.put_line(rec.GokullId || ' ' || rec.GokullName || ' ' || rec.Pokeshhription);
    END LOOP;
END;
/
 Call GetProducDesc();
 
 select * from subject;
 
create or replace PROCEDURE valuekudu as
BEGIN
    DBMS_OUTPUT.PUT_LINE('wont give da poodaaa'||'Nothing');
END;
/
call valuekudu();



CREATE OR REPLACE PROCEDURE GET_EMPLOYEE_NAME_FROM_PRODUCT (
    p_prod_id IN PRODUCTS.prod_id%TYPE,
    p_prod_name OUT EMPLOYEE.prod_name%TYPE
) AS
    v_prod_id EMPLOYEE.EMP_ID%TYPE;
BEGIN
    -- Step 1: Retrieve the employee ID for the given product
    SELECT prod_id
    INTO v_prod_id
    FROM PRODUCTS
    WHERE prod_id = p_prod_id;
    
    -- Step 2: Retrieve the employee name based on the employee ID
    SELECT prod_name
    INTO p_prod_name
    FROM EMPLOYEE
    WHERE EMP_ID = v_prod_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Handle case where no data is found
        p_prod_name := 'No employee found for this product';
    WHEN OTHERS THEN
        -- Handle other unexpected errors
        p_prod_name := 'Error occurred: ' || SQLERRM;
END;
/
