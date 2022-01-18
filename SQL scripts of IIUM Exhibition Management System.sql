DROP TABLE PAYMENT cascade constraints;
DROP TABLE PARTICIPENT cascade constraints;
DROP TABLE WINNER cascade constraints;
DROP TABLE RESEARCH_PROJECT cascade constraints;
DROP TABLE JUDGE cascade constraints;
DROP TABLE REGISTERATION  cascade constraints;
DROP SEQUENCE judge_no_seq;
DROP SEQUENCE participent_id_seq;

Create table payment
(pay_id number(4),
amount number(12) NOT NULL,
university varchar2(8),
pay_date date,
CONSTRAINT payment_pay_id_PK PRIMARY KEY(pay_id));

Create table research_project
(pr_title varchar2(20),
pr_track varchar2(13),
pr_id number(3),
pr_name varchar2(13),
pr_type varchar2(13),
CONSTRAINT research_project_pr_title_PK PRIMARY KEY (pr_title),
CONSTRAINT research_project_pr_type_ck check (pr_type IN ('Fundamental','product')));

Create table participent
(prt_id number(3),
prt_fname varchar2(15),
prt_lname varchar2(10),
prt_email varchar2(22),
prt_university varchar2(10),
prt_phoneNo varchar2(10),
title varchar2(20),
CONSTRAINT participent_prt_id_PK PRIMARY KEY(prt_id),
CONSTRAINT participent_title_FK FOREIGN KEY(title) REFERENCES research_project(pr_title) ON DELETE CASCADE);

Create table registeration
( reg_no number(3),
reg_date date,
pay_id number(4),
prt_id number(3),
CONSTRAINT registeration_reg_no_PK PRIMARY KEY(reg_no),
CONSTRAINT registeration_pay_id_FK FOREIGN KEY(pay_id) REFERENCES payment(pay_id) ON DELETE CASCADE,
CONSTRAINT registeration_prt_id_FK FOREIGN KEY(prt_id) REFERENCES participent(prt_id) ON DELETE CASCADE);

Create table judge
(j_id number(3),
j_name varchar2(10),
j_assignment varchar2(10),
j_evaluation  varchar2(12),
title varchar2(20),
CONSTRAINT judge_j_id_PK PRIMARY KEY(j_id),
CONSTRAINT judge_title_FK FOREIGN KEY(title) REFERENCES research_project(pr_title) ON DELETE CASCADE);

Create table winner
(win_id varchar2(6),
win_name number(3),
award varchar2(10),
win_score number(3),
rank varchar2(10),
CONSTRAINT winner_win_score_PK PRIMARY KEY(win_score),
CONSTRAINT winner_win_name_FK  FOREIGN KEY (win_name) REFERENCES participent (prt_id) ON DELETE CASCADE);

insert into payment
values(00543,16000,'IIUM',TO_DATE('08-DEC-15'));
insert into payment
values(00753,13600,'UKM',TO_DATE('12-DEC-15'));
insert into payment
values(00842,10400,'USIM',TO_DATE('06-DEC-15'));
insert into payment
values(00123,4900,'IIUM',TO_DATE('05-DEC-15'));
insert into payment
values(00321,6780,'UM',TO_DATE('18-DEC-15'));
insert into payment
values(00541,15100,'UTM',TO_DATE('22-DEC-15'));
insert into payment
values(00513,13100,'IIUM',TO_DATE('11-DEC-15'));
insert into payment
values(00232,12650,'UKM',TO_DATE('15-DEC-15'));
insert into payment
values(00468,7950,'IIUM',TO_DATE('14-DEC-15'));
insert into payment
values(00569,4995,'UM',TO_DATE('28-DEC-15'));
insert into payment
values(00627,7660,'IIUM',TO_DATE('30-DEC-15'));
insert into payment
values(00137,9830,'UM',TO_DATE('17-DEC-15'));
insert into payment
values(00374,10700,'UTM',TO_DATE('27-DEC-15'));
insert into payment
values(00386,13100,'USIM',TO_DATE('12-DEC-15'));

insert into research_project
values('learning styles', 'innovation', 136, 'computer' , 'Fundamental');
insert into research_project 
values('social media', 'creativity', 342, 'social media',  'product');
insert into research_project 
values('technology', 'innovation', 355,  'social policy', 'product');
insert into research_project 
values('classical piano', 'music', 279, 'piano', 'Fundamental');
insert into research_project 
values('music effect ', 'tv sound', 734, 'keyboard', 'Fundamental');
insert into research_project
values('network', 'innovation', 237, 'computer' ,'product');
insert into research_project
values('ethic', 'effect', 523, 'real life' , 'Fundamental');
insert into research_project
values('business', 'innovation', 421, 'computer' , 'Fundamental');
insert into research_project
values('art', 'innovation', 763, 'computer' , 'Fundamental');

insert into participent 
values(100,'shafullah','wasiq','shafiullah@yahoo.com','UTM',0112724093,'learning styles');
insert into participent 
values(103,'nagina','ahmadi','ahmadi@yahoo.com','UTM',0112724347,'classical piano');
insert into participent 
values(106,'wajiha','arman','arman15@hotmail.com','UKM',0130977243,'music effect ');
insert into participent 
values(109,'zabiullah','abid','zalgi@yahoo.com','UM',0193472431,'ethic');
insert into participent 
values(112,'fatima','naqib','fatimah@gmail.com','IIUM',0182320472,'social media');
insert into participent 
values(115,'ahmad','mehran','ahmad@yahoo.com','UM',0111431472,'technology');
insert into participent 
values(118,'sharifa','wahaj','sharifa@yahoo.com','USIM',0182232043,'network');
insert into participent 
values(121,'hadis','ahmadzai','ahmadzai@gmail.com','IIUM',0112745291,'social media');
insert into participent 
values(124,'wajiha','arman','arman15@hotmail.com','UKM',0130977243,'technology');
insert into participent 
values(127,'ahmad','mehran','ahmad@yahoo.com','UM',0111431472,'business');
insert into participent 
values(130,'wajiha','arman','arman15@hotmail.com','UKM',0130977243,'social media');

insert into registeration
values(05,'15-JAN-15',00543,103);
insert into registeration
values(31,'10-JAN-15',00753,112);
insert into registeration
values(12,'01-JAN-15',00842,121);
insert into registeration
values(15,'09-JAN-15',00123,127);
insert into registeration
values(02,'22-JAN-15',00321,109);
insert into registeration
values(17,'20-JAN-15',00541,112);
insert into registeration
values(11,'11-JAN-15',00513,100);
insert into registeration
values(14,'05-JAN-15',00232,106);
insert into registeration
values(04,'03-JAN-15',00386,115);
insert into registeration
values(01,'12-JAN-15',00137,118);
insert into registeration
values(06, '24-JAN-15',00569,109);
insert into registeration
values(09,'17-JAN-15',00627,127);
insert into registeration
values(03, '20-JAN-15',00569,103);
insert into registeration
values(07,'15-JAN-15',00627,109);

insert into judge
values(01,'khan','IIUM','poster','business');
insert into judge
values(02,'nabil','UM','product','social media');
insert into judge
values(03,'eraj','UITM','poster','technology');
insert into judge
values(04,'zalgi','UKM','product','learning styles');
insert into judge
values(05,'Gulkhan','USIM','poster','music effect ');
insert into judge
values(06,'ahmad','IIUM','product','classical piano');
insert into judge
values(07,'fatima','IIUM','product','social media');
insert into judge
values(08,'vali','USIM','poster','network');
insert into judge
values(09,'ali','UM','poster','ethic');

insert into winner 
values ('a123',100,'gold',95,'first');
insert into winner 
values ('a155',112,'gold',100,'first');
insert into winner 
values ('c164',118,'silver',85,'second');
insert into winner 
values ('d145',109,'bronze',64,'third');
insert into winner 
values ('c128',127,'silver',87,'second');
insert into winner 
values ('e131',106,'silver',75,'second');
insert into winner 
values ('f131',121,'gold',98,'first');
insert into winner 
values ('d173',124,'bronze',63,'third');
insert into winner 
values ('g153',115,'silver',76,'second');
insert into winner 
values ('c128',103,'gold',99,'first');

create sequence judge_no_seq
maxvalue 100
start with 10
increment by 1
cycle;
insert into judge values(judge_no_seq.nextval, 'mattin','UKM','product','art');

create sequence participent_id_seq
maxvalue 600
start with 133
increment by 3
cycle;
insert into participent values(participent_id_seq.nextval,'sajeda','ahmadi','ahmadi@yahoo.com', 'IIUM',0111287475,'art');



