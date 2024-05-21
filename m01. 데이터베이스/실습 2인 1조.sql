-- �б� ������ ���Ͽ� ���̺� 2�� �̻����� db�� �����ϰ� 3�� �̻� Ȱ���� �� �ִ� case�� ���弼��.

DROP TABLE school_student;
DROP TABLE school_teacher;
DROP TABLE admini_staff;
DROP TABLE security_staff;

CREATE TABLE SCHOOL_STUDENT(
school_id NUMBER PRIMARY KEY,
name VARCHAR2(40) NOT NULL,
age NUMBER NOT NULL,
address VARCHAR2(100),
kor NUMBER(3),
math NUMBER(3),
eng NUMBER(3),
science NUMBER(3),
phone VARCHAR2(30),
class VARCHAR2(5),
gender VARCHAR2(50) NOT NULL);

CREATE TABLE SCHOOL_TEACHER(
school_id NUMBER PRIMARY KEY,
name VARCHAR2(40) NOT NULL,
age NUMBER NOT NULL,
address VARCHAR2(100),
phone VARCHAR2(30),
class VARCHAR2(5),
subject VARCHAR2(20),
gender VARCHAR2(50) NOT NULL);
    
CREATE TABLE school_teacher (
    schoolid NUMBER PRIMARY KEY,
    name VARCHAR2 (40),
    age NUMBER NOT NULL,
    address VARCHAR2 (100),
    phone VARCHAR2 (40),
    class VARCHAR2 (5),
    gender VARCHAR2 (50) NOT NULL,
    subject VARCHAR2 (20));
    
CREATE TABLE admini_staff (
    schoolid NUMBER PRIMARY KEY,
    name VARCHAR2 (40),
    age NUMBER NOT NULL,
    address VARCHAR2 (100),
    phone VARCHAR2 (40),
    gender VARCHAR2 (50) NOT NULL,
    department VARCHAR2 (50),
    dandn VARCHAR2 (50) 
);
    
    
CREATE TABLE security_staff (
    schoolid NUMBER PRIMARY KEY,
    name VARCHAR2 (40),
    age NUMBER NOT NULL,
    address VARCHAR2 (100),
    phone VARCHAR2 (40),
    gender VARCHAR2 (50) NOT NULL,
    area VARCHAR2(50) DEFAULT '����' CHECK (area IN ('����', '�Ĺ�')),
    FOREIGN KEY (schoolid) REFERENCES admini_staff(schoolid),
    dandn VARCHAR2 (50)
); 

INSERT INTO school_student VALUES (1, '���缮', 17,'����Ư���� ������ �б�����', 85, 73, 95, 86, '010-1234-1234','2��', '��');
INSERT INTO school_student VALUES(2, '��ö��', 17, '����Ư���� ������ û�㵿', 88, 67, 92, 81, '010-2345-2345', '2��', '��');
INSERT INTO school_student VALUES(3, '�ڿ���', 17, '����Ư���� ������ ������', 90, 78, 85, 90, '010-3456-3456', '3��', '��');
INSERT INTO school_student VALUES(4, '�̹�ȣ', 17, '����Ư���� ������ �Ｚ��', 75, 88, 78, 85, '010-4567-4567', '1��', '��');
INSERT INTO school_student VALUES(5, '������', 17, '����Ư���� ������ ��ġ��', 82, 81, 91, 89, '010-5678-5678', '2��', '��');
INSERT INTO school_student VALUES(6, '������', 17, '����Ư���� ������ ���', 77, 69, 85, 90, '010-6789-6789', '3��', '��');
INSERT INTO school_student VALUES(7, '���켺', 17, '����Ư���� ������ �б�����', 84, 76, 88, 87, '010-7890-7890', '1��', '��');
INSERT INTO school_student VALUES(8, '�Ѱ���', 17, '����Ư���� ������ û�㵿', 92, 85, 93, 91, '010-8901-8901', '2��', '��');
INSERT INTO school_student VALUES(9, '������', 17, '����Ư���� ������ ������', 80, 74, 86, 84, '010-9012-9012', '3��', '��');
INSERT INTO school_student VALUES(10, '������', 17, '����Ư���� ������ �Ｚ��', 89, 90, 95, 92, '010-0123-0123', '1��', '��');
INSERT INTO school_student VALUES(11, '�嵿��', 17, '����Ư���� ������ ��ġ��', 91, 77, 89, 86, '010-1234-2345', '2��', '��');
INSERT INTO school_student VALUES(12, '������', 17, '����Ư���� ������ ���', 83, 82, 90, 88, '010-2345-3456', '3��', '��');
INSERT INTO school_student VALUES(13, '����', 17, '����Ư���� ������ �б�����', 85, 79, 87, 84, '010-3456-4567', '1��', '��');
INSERT INTO school_student VALUES(14, '����', 17, '����Ư���� ������ û�㵿', 87, 86, 92, 90, '010-4567-5678', '2��', '��');
INSERT INTO school_student VALUES(15, '���ر�', 17, '����Ư���� ������ ������', 78, 75, 80, 83, '010-5678-6789', '3��', '��');
INSERT INTO school_student VALUES(16, '������', 17, '����Ư���� ������ �Ｚ��', 90, 88, 94, 89, '010-6789-7890', '1��', '��');
INSERT INTO school_student VALUES(17, '����', 17, '����Ư���� ������ ��ġ��', 82, 71, 85, 80, '010-7890-8901', '2��', '��');
INSERT INTO school_student VALUES(18, '������', 17, '����Ư���� ������ ���', 84, 87, 93, 88, '010-8901-9012', '3��', '��');
INSERT INTO school_student VALUES(19, '���μ�', 17, '����Ư���� ������ �б�����', 81, 70, 86, 85, '010-9012-0123', '1��', '��');
INSERT INTO school_student VALUES(20, '�ں���', 17, '����Ư���� ������ û�㵿', 89, 85, 91, 87, '010-0123-1234', '2��', '��');
INSERT INTO school_student VALUES(21, '����', 17, '����Ư���� ������ ������', 83, 72, 88, 86, '010-1234-2346', '3��', '��');
INSERT INTO school_student VALUES(22, '������', 17, '����Ư���� ������ �Ｚ��', 90, 91, 93, 94, '010-2345-3457', '1��', '��');
INSERT INTO school_student VALUES(23, '�̵���', 17, '����Ư���� ������ ��ġ��', 85, 80, 82, 88, '010-3456-4568', '2��', '��');
INSERT INTO school_student VALUES(24, '���γ�', 17, '����Ư���� ������ ���', 88, 78, 90, 87, '010-4567-5679', '3��', '��');
INSERT INTO school_student VALUES(25, '������', 17, '����Ư���� ������ �б�����', 87, 85, 89, 90, '010-5678-6780', '1��', '��');
INSERT INTO school_student VALUES(26, '������', 17, '����Ư���� ������ û�㵿', 92, 88, 94, 91, '010-6789-7891', '2��', '��');
INSERT INTO school_student VALUES(27, '������', 17, '����Ư���� ������ ������', 84, 76, 87, 85, '010-7890-8902', '3��', '��');
INSERT INTO school_student VALUES(28, '����', 17, '����Ư���� ������ �Ｚ��', 93, 89, 95, 92, '010-8901-9013', '1��', '��');
INSERT INTO school_student VALUES(29, '�ڼ���', 17, '����Ư���� ������ ��ġ��', 81, 77, 83, 86, '010-9012-0124', '2��', '��');
INSERT INTO school_student VALUES(30, '�ѿ���', 17, '����Ư���� ������ ���', 86, 84, 88, 89, '010-0123-1235', '3��', '��');

INSERT INTO school_teacher VALUES (1, '�����', 35, '����Ư���� ������ û�㵿', '010-9876-5432', 'A', '����', '��');
INSERT INTO school_teacher VALUES (2, '������', 38, '����Ư���� ������ ȭ�', '010-1234-5678', 'B', '����', '��');
INSERT INTO school_teacher VALUES (3, '������', 40, '����Ư���� ���ϱ� �̾Ƶ�', '010-9876-5432', 'A', '����', '��');
INSERT INTO school_teacher VALUES (4, '�ڼ���', 32, '����Ư���� ���ʱ� ��赿', '010-8765-4321', 'B', '����', '��');
INSERT INTO school_teacher VALUES (5, '������', 37, '����Ư���� ���ı� �ſ���', '010-9876-5432', 'A', '����', '��');
INSERT INTO school_teacher VALUES (6, '��¿�', 41, '����Ư���� ������ õȣ��', '010-1234-5678', 'B', '����', '��');
INSERT INTO school_teacher VALUES (7, '������', 33, '����Ư���� ������ �ֹ���', '010-9876-5432', 'A', '����', '��');
INSERT INTO school_teacher VALUES (8, '������', 36, '����Ư���� ������ ���', '010-8765-4321', 'B', '����', '��');

INSERT INTO admini_staff VALUES (1, '�̹̼�', 52, '����Ư���� ������', '010-1928-3746', 'Famale', '�Ĵ�', 'Day');
INSERT INTO admini_staff VALUES (2, '������', 45, '����Ư���� ���빮��', '010-9876-5432', 'Male', '����', 'Day');
INSERT INTO admini_staff VALUES (3, '������', 38, '����Ư���� ������', '010-1234-5678', 'Female', '�л�', 'Night');
INSERT INTO admini_staff VALUES (4, '������', 50, '����Ư���� ������', '010-8765-4321', 'Male', '����', 'Night');
INSERT INTO admini_staff VALUES (5, '�̹̼�', 41, '����Ư���� ���ʱ�', '010-5555-5555', 'Female', '����', 'Night');
INSERT INTO admini_staff VALUES (6, '�ֿ���', 49, '����Ư���� ���ı�', '010-1111-1111', 'Male', '����', 'Day');
INSERT INTO admini_staff VALUES (7, '������', 35, '����Ư���� �����', '010-9999-9999', 'Female', '�л�', 'Day');

INSERT INTO security_staff VALUES (1, '�̽�ȣ', 47, '����Ư���� ��õ��', '010-3333-3333', 'Male', '����', 'Day');
INSERT INTO security_staff VALUES (2, '�赿��', 53, '����Ư���� ���ʱ�', '010-8888-8888', 'Male', '����', 'Night');
INSERT INTO security_staff VALUES (3, '�强��', 48, '����Ư���� �߶���', '010-1212-1212', 'Male', '�Ĺ�', 'Day');

SELECT * FROM school_student;
SELECT * FROM school_teacher;
SELECT * FROM admini_staff;
SELECT * FROM security_staff;

-- CASE 1 : ��� ������ ���� ����������� ���� ���� ��ȸ
SELECT name FROM school_student WHERE (kor + math + eng + science) >
(SELECT AVG(kor + math + eng + science) FROM school_student);

-- CASE 2 : �� ������ ���� A�� / B�� ��ȸ
SELECT S.NAME,S.CLASS, CASE WHEN (S.kor + S.math + S.eng + S.science) / 4 >= 85 
THEN 'A��' ELSE 'B��' END AS �� FROM school_student S;

-- CASE 3 : '�̽�ȣ' ���� ������ ��ȭ��ȣ�� '�赿��'�� ��ȭ��ȣ�� ���� �ٲٰ� ���� ��ȸ
UPDATE security_staff
SET phone = CASE 
    WHEN phone = '010-3333-3333' THEN '010-8888-8888'
    WHEN phone = '010-8888-8888' THEN '010-3333-3333'
END
WHERE phone IN ('010-3333-3333', '010-8888-8888');
SELECT * FROM security_staff;

-- Case 4 : �������� �� �������� �߿��� 1. ���� ���ϴ� 2. �㿡 ���ϴ� �ο��� �����ϴ� ���� ��ȸ

-- Case 4 - 1 : ���� ���ϴ� �ο�
SELECT a.name AS �̸�, a.dandn AS ���ϴ½ð�
FROM admini_staff a
WHERE a.dandn = 'Day'

UNION ALL

SELECT s.name AS �̸�, s.dandn AS ���ϴ½ð�
FROM security_staff s
WHERE s.dandn = 'Day';

-- Case 4 - 2 : �㿡 ���ϴ� �ο�
SELECT a.name AS �̸�, a.dandn AS ���ϴ½ð�
FROM admini_staff a
WHERE a.dandn = 'Night'

UNION ALL

SELECT s.name AS �̸�, s.dandn AS ���ϴ½ð�
FROM security_staff s
WHERE s.dandn = 'Night';

-- CASE 5 : �� ������ ���� ���� 3���� ���б� ���� ��ȸ / �̸�, �հ�����(sum), class /  

SELECT * FROM (SELECT s.name, SUM(s.kor + s.math + s.eng + s.science) AS "�� ����", s.class FROM school_student s
GROUP BY s.name, s.class
ORDER BY SUM(s.kor + s.math + s.eng + s.science) DESC)
WHERE ROWNUM <= 3;

-- CASE 6 : ���� ���׿��� ��� ����鳢�� ���� ���������� ���� ����������
SELECT NAME, ADDRESS, (kor + math + eng + science) AS �������� FROM school_student
WHERE ADDRESS LIKE '%��ġ��%'
ORDER BY �������� DESC;