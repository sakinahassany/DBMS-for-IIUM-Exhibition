/* PL/SQL block to call funcation pay which is created earlier */

SET VERIFY OFF
SET SERVEROUT ON
ACCEPT id PROMPT 'Enter the Payment Code : '
DECLARE
v_pay varchar2(100);
v_uni payment.university%TYPE;
BEGIN
select university into v_uni from payment where pay_id=&id;
v_pay := pay('&id',v_uni);
DBMS_OUTPUT.put_line ('The Prticipents from unoversity of  '||v_uni||' '||v_pay);
END;
/
