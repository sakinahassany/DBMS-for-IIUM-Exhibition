/* This function get a payment ID and eveluate it that belong to which unversity IF the university is IIUM,
then it does not require to be pay ElSE the it requires to pay. */

CREATE OR REPLACE FUNCTION pay
(id IN payment.pay_id%TYPE,
uni IN payment.university%TYPE ) 
RETURN varchar2
AS
v_pay varchar2(100);
BEGIN
IF uni = 'IIUM' THEN v_pay:= ' No need To Pay';
ELSE v_pay:= ' Need to pay';
END IF;
RETURN v_pay;
END pay;
/

