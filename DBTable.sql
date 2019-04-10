CREATE TABLE student
 (SNO varchar2(9) PRIMARY KEY,
 NAME varchar2(20) UNIQUE,
age Number(3,0),
CITY varchar2(20),
remark clob); 
  
  
insert into student values('S1','精益',20,'天津','');
insert into student values('S2','盛锡',10,'北京','');
insert into student values('S3','东方红',30,'北京','');
insert into student values('S4','丰泰盛',20,'天津','');
insert into student values('S5','为民',30,'上海','');
CREATE TABLE  course
         (PNO   CHAR(4) PRIMARY KEY, 
         PNAME  CHAR(40),    
      COLOR    CHAR(4), 
          WEIGHT  SMALLINT,
          );
insert into course values('P1','螺母','红',12);
insert into course values('P2','螺栓','绿',17);
insert into course values('P3','螺丝刀','蓝',14);
insert into course values('P4','螺丝刀','红',14);
insert into course values('P5','凸轮','蓝',40);
insert into course values('P6','齿轮','红',30);
CREATE TABLE  JNO
         (JNO   CHAR(4) PRIMARY KEY, 
         JNAME  CHAR(40),    
      CITY    CHAR(4),  
          ); 
insert into course values('J1','三建','北京');
insert into course values('J2','一汽','长春');
insert into course values('J3','弹簧厂','天津');
insert into course values('J4','造船厂','天津');
insert into course values('J5','机车厂','唐山');
insert into course values('J6','无线电厂','常州');
insert into course values('J7','半导体厂','南京');

CREATE TABLE  SPJ 
         (SNO  CHAR(9),
          PNO CHAR(4),
          JNO CHAR(4),  
          QTY  INT, 
           PRIMARY KEY (SNO,PNO,JNO)
     );
insert into sc values('S1','P1','J1',200); 
insert into sc values('S1','P1','J3',100);
insert into sc values('S1','P1','J4',700);
insert into sc values('S1','P2','J2',100);
insert into sc values('S2','P3','J1',400);
insert into sc values('S2','P3','J2',200);
insert into sc values('S2','P3','J4',500);
insert into sc values('S2','P3','J5',400);
insert into sc values('S2','P5','J1',400);
insert into sc values('S2','P5','J2',100);
insert into sc values('S3','P1','J1',200);
insert into sc values('S3','P3','J1',200);
insert into sc values('S4','P5','J1',100);
insert into sc values('S4','P6','J4',300);
insert into sc values('S4','P6','J4',200);
insert into sc values('S5','P2','J4',100);
insert into sc values('S5','P3','J1',200);
insert into sc values('S5','P6','J2',200);
insert into sc values('S5','P6','J4',500);

