/* This function get judge ID and evaluate that judge comes from which university */

CREATE OR REPLACE FUNCTION get_judge_assign
(id IN number)
RETURN varchar2
IS 
assign varchar2(10);
BEGIN
Select j_assignment into assign from judge where j_id=id;
DBMS_OUTPUT.PUT_LINE('The judge with ID ' || id || ' is from university of ' || assign);
RETURN (assign);
END get_judge_assign;
/

