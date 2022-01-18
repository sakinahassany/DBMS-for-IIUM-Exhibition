/* This procedure is created to add new research project to the DBMS */

create or replace procedure newresearchproject
(title IN research_project.pr_title%TYPE,
track IN research_project.pr_track%TYPE,
id   IN  research_project.pr_id%TYPE,
name IN  research_project.pr_name%TYPE,
type IN research_project.pr_type%TYPE)
AS
BEGIN
INSERT INTO research_project(pr_title,pr_track,pr_id , pr_name,pr_type)
VALUES(title,track,id,name,type);
END newresearchproject;
/