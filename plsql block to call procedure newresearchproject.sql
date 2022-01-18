

SET verify OFF
ACCEPT title PROMPT 'ENTER Title Of New research project: '
ACCEPT track PROMPT 'ENTER Track Of New research project: '
ACCEPT id  PROMPT 'ENTER ID Of New research project: '
ACCEPT name PROMPT 'ENTER Name Of New research project: '
ACCEPT type PROMPT 'ENTER Type Of New research project:'
BEGIN
newresearchproject('&title','&track','&id','&name','&type');
DBMS_OUTPUT.PUT_LINE('NEW RESEARCH PROJECT ADDED SUCCESSFULY');
END;
/