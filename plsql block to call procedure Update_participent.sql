/* PL/SQL block which calls the created procedure named Update_participent */

SET SERVEROUTPUT ON
SET verify OFF
ACCEPT id  PROMPT 'Enter Participent ID: '
--12
ACCEPT phone PROMPT 'Participents Current Phone No: ' 
--0182320472
ACCEPT new PROMPT 'Enter Participents New Phone No: ' 
--0182133410
Declare  v_phone  varchar2(10); 
v_new varchar2(10); 
BEGIN   v_phone  := '&phone';  
v_new :='&new'; 
Update_participent('&id',v_phone , v_new);   v_phone  := v_new;
DBMS_OUTPUT.PUT_LINE('
Your New phone No Is ' || v_phone);
DBMS_OUTPUT.PUT_LINE('The New phone No Has Been Updated On The System');
END;
/

