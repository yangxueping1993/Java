--��������
create sequence SEQ_USER_NO  --Sequenceʵ����
minvalue 1                                --��Сֵ����������Ϊ0
maxvalue 2147483647                       --���ֵ
start with 1                              --��1��ʼ����
increment by 1                            --ÿ�μӼ���
nocache;                                 --���û���cache�����У����ϵͳdown���˻�������������ᵼ�����в�������Ҳ��������Ϊ---------NOCACHE

SELECT SEQ_USER_NO.NEXTVAL FROM dual;
 
SELECT * FROM student;


create table department(  
id varchar2(4) primary key not null,
dept_name varchar2(20),  
budget varchar2(20),  
descript varchar2(20)
);  


create table course(  
course_id varchar2(20),  
deptnames varchar2(20),  
credits varchar2(20)); 


INSERT INTO department(id, dept_name, budget, descript) VALUES (1, '����', NULL, NULL);
INSERT INTO department(id, dept_name, budget, descript) VALUES (2, '����', NULL, NULL);
INSERT INTO department(id, dept_name, budget, descript) VALUES (3, '����', NULL, NULL);
INSERT INTO department(id, dept_name, budget, descript) VALUES (4, '����', NULL, NULL);

SELECT * FROM department;
SELECT * from course for update;

UPDATE department 
SET dept_name = 'hha' 
WHERE
	dept_name in ( SELECT ddd FROM course d WHERE d.course_id = '1' );
  
  
UPDATE department 
SET dept_name = 'hha' 
WHERE
	dept_name = ( SELECT deptnames FROM course d WHERE d.course_id = '2' );