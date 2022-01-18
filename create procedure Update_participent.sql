/* This function is created to update the details of certain participent */

create or replace procedure Update_participent
(id IN  participent.prt_id%TYPE,
phone IN participent.prt_phoneNo%TYPE,
new IN varchar2)
IS
BEGIN
Update participent   SET  prt_phoneNo= new  Where prt_id = id;
END  Update_participent;
/