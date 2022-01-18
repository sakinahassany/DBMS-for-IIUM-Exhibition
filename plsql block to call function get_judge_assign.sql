/* This PL/SQL block calls the created function get_judge_assign */

SET VERIFY OFF
SET SERVEROUT ON
ACCEPT id PROMPT 'Enter judge id to view that from which university is : '
DECLARE
v_ass judge.j_assignment%TYPE;
BEGIN
v_ass:=get_judge_assign(&id);
END;
/
