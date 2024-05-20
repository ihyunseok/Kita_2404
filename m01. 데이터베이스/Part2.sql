-- ������ Ÿ��

-- / ������ (Numeric Types)
-- NUMBER: ���� �������� ���� ������ Ÿ��. ����, �Ǽ�, ���� �Ҽ���, �ε� �Ҽ��� ���� ����
-- �� NUMBER�� NUMBER(38,0)�� ���� �ǹ̷� �ؼ�, precision 38�� �ڸ���, Scale 9�� �Ҽ��� ���� �ڸ���
-- NUMBER(10) : �ڸ� ���� 10, NUMBER(8,2) : �ڸ����� 8, �Ҽ��� ���ϴ� 2�ڸ������� ǥ���ϴ� ������ ��.

-- / ������ (Character Types)
-- VARCHAR2(size): ���� ���� ���ڿ��� ����. size�� �ִ� ���� ���̸� ����Ʈ Ȥ�� ���� ���� ����
-- NVARCHAR2(size)�� ����� ������ ���� ����Ʈ ���� ��� �׻� ���� ������ ũ�Ⱑ ����
-- CHAR(size): ���� ���� ���ڿ��� ����. ������ ���̺��� ª�� ���ڿ��� �ԷµǸ� �������� �������� ä����

-- VARCHAR2 �� �� ���� ������� ���̸� ���� : ����Ʈ�� ���� 
-- �� ���� Ȯ�� ��� :
SELECT parameter, value 
FROM v$nls_parameters
WHERE parameter = 'NLS_LENGTH_SEMANTICS';

--���� ���ڵ��� �ǹ�
--��ǻ�ʹ� ���ڷ� �̷���� �����͸� ó��. ���ڵ��� ���� ����(��: 'A', '��', '?')�� 
--����(�ڵ� ����Ʈ)�� ��ȯ�Ͽ� ��ǻ�Ͱ� �����ϰ� ������ �� �ְ� �Ѵ�.
--���� ���, ASCII ���ڵ������� �빮�� 'A'�� 65��, �ҹ��� 'a'�� 97�� ���ڵ�. 
--�����ڵ� ���ڵ������� 'A'�� U+0041, �ѱ� '��'�� U+AC00, �̸�Ƽ�� '?'�� U+1F60A�� ���ڵ�
--�ƽ�Ű�� 7��Ʈ�� ����Ͽ� �� 128���� ���ڸ� ǥ���ϴ� �ݸ� �����ڵ�� �ִ� 1,114,112���� ���ڸ� ǥ��

--ASCII ���ڵ�:
--���� 'A' -> 65 (10����) -> 01000001 (2����)
--���� 'B' -> 66 (10����) -> 01000010 (2����)

--�����ڵ�(UTF-8) ���ڵ�: 
--���� 'A' -> U+0041 -> 41 (16����) -> 01000001 (2����, ASCII�� ����)
--���� '��' -> U+AC00 -> EC 95 80 (16����) -> 11101100 10010101 10000000 (2����)

--CLOB: CLOB�� �Ϲ������� �����ͺ��̽��� �⺻ ���� ����(��: ASCII, LATIN1 ��)�� ����Ͽ� �ؽ�Ʈ �����͸� ����. 
--�� ������ �ַ� ����� ���� ���� ����Ʈ ���ڷ� �̷���� �ؽ�Ʈ�� �����ϴ� �� ���.
--NCLOB: NCLOB�� �����ڵ�(UTF-16)�� ����Ͽ� �ؽ�Ʈ �����͸� ����. ���� �ٱ��� ������ �ʿ��� ��, \
--�� �پ��� ���� ������ �ؽ�Ʈ �����͸� ������ �� ����. �ٱ��� ���ڰ� ���Ե� �����͸� ȿ�������� ó���� �� �ִ�.

-- / ��¥ �� �ð��� (Date and Time Types)
-- DATE: ��¥�� �ð��� ����. ������ Ÿ���� ��, ��, ��, ��, ��, �ʸ� ����
-- TIMESTAMP: ��¥�� �ð��� �� ���� ������ �������� ���� 

-- / ���� �������� (Binary Data Types)
-- BLOB: �뷮�� ���� �����͸� ����. �̹���, ����� ���� ���� �����ϴ� �� ����

-- / ��Ը� ��ü�� (Large Object Types)
-- CLOB: �뷮�� ���� �����͸� ����
-- NCLOB: �뷮�� ������ ���� ���� �����͸� ����

-- / �� �������� : ���̺��� ����Ǵ� ����
-- PRIMARY KEY : �� ���� �����ϰ� �ĺ��ϴ� ��(�Ǵ� ������ ����). �ߺ��ǰų� NULL ���� ������� �ʴ´�.
-- FOREIGN KEY(�ܷ� Ű) : ���̺��� 2�� ���� �� �ٸ� ���̺��� �⺻ Ű�� �����ϴ� ��. ���� ���Ἲ�� ����
-- UNIQUE : ���� �ߺ��� ���� ����� ���� ����. NULL���� ���
-- NOT NULL : ���� NULL ���� ������� �ʴ´�.
-- CHECK : �� ���� Ư�� ������ �����ؾ� ���� ���� (��: age > 18)
-- DEFAULT : ���� ������� ���� �������� ���� ��� ���� �⺻���� ����

-- AUTHOR ���̺� ����
CREATE TABLE authors (
    id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    nationality VARCHAR2(50)
);

-- AUTHOR ���̺� ����
DROP TABLE authors;

DROP TABLE newbook;

-- Q. NEWBOOK�̶�� ���̺��� �����ϼ���.
CREATE TABLE newbook (
    bookid NUMBER,
    isbn NUMBER(13), 
    bookname VARCHAR2(50) NOT NULL,
    author VARCHAR2(50) NOT NULL,
    publisher VARCHAR(30) NOT NULL,
    price NUMBER DEFAULT 10000 CHECK (price>1000),
    PRIMARY KEY(bookid),
    published_data DATE
);

INSERT INTO newbook VALUES (1, 9781234567890, 'SQL Guide', 'John Doe', 'TechBooks', 15000, TO_DATE('2024-05-20', 'YYYY-MM-DD'));

-- PRIMARY KEY �� ������ Ű�� ���� ��ȣ�� �ٿ��ְ� �Ǹ��� ���Ἲ ���� ���ǿ� ����Ǳ� ������ ������ ���. 
-- DATE Ÿ���� ��¥�� �ð��� YYYY-MM-DD HH24:MI:SS �������� ����.
INSERT INTO newbook VALUES (2, 9781234567890, 'SQL Guide', 'John Doe', 'TechBooks', 15000, TO_DATE('2024-05-20 15:45:30', 'YYYY-MM-DD HH24:MI:SS'));

-- isbn NUMBER(13)���� �ʱ� ������ ��� �ش� �ڸ� ���� ���� �ÿ��� ������ ��ƴ�. 
-- 1. isbn NUMBER(13)���� �ʱ� ������ ��� 2. �����Ͱ� �ִ� ��� ���� ������ �Ұ��ϴ�. 
-- �׷���, �Ʒ��� �ִ� ALTER TABLE _ MODIFY �� ����Ͽ� �ڸ����� �÷��ش�.
INSERT INTO newbook VALUES (3, 97812345678901231232134, 'SQL Guide', 'John Doe', 'TechBooks', 15000, TO_DATE('2024-05-20 15:45:30', 'YYYY-MM-DD HH24:MI:SS'));
ALTER TABLE newbook MODIFY (isbn VARCHAR2(50));

-- �ش� ��쿡�� price number default ���� 10000���� ���� ������ price�� 1000���� ū ��쿡�� üũ �ϹǷ� ������ ���.
INSERT INTO newbook VALUES (4, 9781234567890, 'SQL Guide', 'John Doe', 'TechBooks', 500, TO_DATE('2024-05-20 15:45:30', 'YYYY-MM-DD HH24:MI:SS'));

-- �����͸� �߰� / �����ϴ� ���
ALTER TABLE newbook ADD author_id NUMBER;
ALTER TABLE newbook DROP COLUMN author_id;

DESC NEWBOOK;
SELECT * FROM newbook;
DELETE FROM newbook;

-- ON DELETE CASCADE �ɼ��� �����Ǿ� �־�, newcustomer ���̺��� � ���� ���ڵ尡 �����Ǹ�, �ش� ���� ��� �ֹ��� 
-- newcustomer ���̺����� �ڵ����� ����
CREATE TABLE newcustomer (
custid NUMBER PRIMARY KEY,
name VARCHAR2(40),
address VARCHAR2(40),
phone VARCHAR2(30));

CREATE TABLE neworders(
orderid NUMBER,
custid NUMBER NOT NULL,
bookid NUMBER NOT NULL,
saleprice NUMBER,
orderdate DATE,
PRIMARY KEY(orderid),
FOREIGN KEY(custid) REFERENCES newcustomer(custid) ON DELETE CASCADE):
DESC NEWORDERS;

-- Task1_0520. 10���� �Ӽ����� �����Ǵ� ���̺� 2���� �ۼ��ϼ���. ��, FROEIGN KEY�� �����Ͽ� ���� ���̺��� �����͸� ���� �� �ٸ� ���̺��� ���õǴ�
-- �����͵� ��� �����ǵ��� �ϼ���. (��� ���������� ���)
-- ��, �� ���̺� 5���� �����͸� �Է��ϰ� �� ��° ���̺� ù ��° ����Ʈ�� �����ϰ� �ִ� �Ӽ��� �����Ͽ� ������ ����

CREATE TABLE neworders(
    orderid NUMBER,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,
    PRIMARY KEY(orderid),
    FOREIGN KEY(custid) REFERENCES newcustomer(custid) ON DELETE CASCADE
);
DESC NEWORDERS;

INSERT INTO newcustomer VALUES(1, 'KEVIN', '���ﵿ', '010-1234-4567');
INSERT INTO neworders VALUES(10, 1, 100, 1000, SYSDATE);

SELECT * FROM newcustomer;
SELECT * FROM neworders;
DELETE FROM newcustomer;

-- �ٸ��� �غ��� 
CREATE TABLE neworder(
    orderid NUMBER,
    custid NUMBER NOT NULL,
    bookid NUMBER PRIMARY KEY,
    saleprice NUMBER,
    orderdate DATE
);
DROP TABLE neworder;

CREATE TABLE books (
    bookid NUMBER,
    isbn NUMBER(13), 
    bookname VARCHAR2(50) NOT NULL,
    author VARCHAR2(50) NOT NULL,
    publisher VARCHAR2(30) NOT NULL,
    price NUMBER DEFAULT 10000 CHECK (price>1000),
    celebrate VARCHAR2(50) NOT NULL,
    custid NUMBER NOT NULL,
    gender VARCHAR2(50) NOT NULL,
    published_data DATE,
    PRIMARY KEY(bookid),
    FOREIGN KEY(custid) REFERENCES neworder(custid) ON DELETE CASCADE
);
DROP TABLE books;

INSERT INTO books VALUES (1, 9781234567891, 'SQL Guide_1', 'John Doe', 'TechBooks', 10000, 'Thanks', 1, 'male', TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO books VALUES (2, 9781234567892, 'SQL Guide_2', 'John Doe', 'TechBooks', 11000, 'Thanks', 2, 'male', TO_DATE('2024-05-21', 'YYYY-MM-DD'));
INSERT INTO books VALUES (3, 9781234567893, 'SQL Guide_3', 'John Doe', 'TechBooks', 12000, 'Thanks', 3, 'male', TO_DATE('2024-05-22', 'YYYY-MM-DD'));
INSERT INTO books VALUES (4, 9781234567894, 'SQL Guide_4', 'John Doe', 'TechBooks', 13000, 'Thanks', 4, 'male', TO_DATE('2024-05-23', 'YYYY-MM-DD'));
INSERT INTO books VALUES (5, 9781234567895, 'SQL Guide_5', 'John Doe', 'TechBooks', 14000, 'Thanks', 5, 'male', TO_DATE('2024-05-24', 'YYYY-MM-DD'));

INSERT INTO neworders VALUES(10, 1, 100, 1000, SYSDATE);

--Task2_0520. Customer ���̺��� �ڼ��� ���� �ּҸ� �迬�� ���� �ּҷ� �����Ͻÿ�.
-- INSERT INTO Customer VALUES (2, '�迬��', '���ѹα� ����', '000-6000-0001');
-- INSERT INTO Customer VALUES (5, '�ڼ���', '���ѹα� ����', NULL);

UPDATE customer
SET address = CASE 
    WHEN address = '���ѹα� ����' THEN '���ѹα� ����'
    WHEN address = '���ѹα� ����' THEN '���ѹα� ����'
END
WHERE address IN ('���ѹα� ����', '���ѹα� ����');
SELECT * FROM customer;
    
--Task3_0520. ���� ���� ���߱����� ���Ե� ������ ���󱸡��� ������ �� ���� ���, ������ ���̽ÿ�.
UPDATE book
SET bookname = CASE
    WHEN bookname LIKE '%�߱�%' THEN '��'
    ELSE bookname
END
WHERE bookname LIKE'%�߱�%';
SELECT bookname, price FROM book;

--Task4_0520. ���缭���� �� �߿��� ���� ��(��)�� ���� ����� �� ���̳� �Ǵ��� ���� �ο����� ���Ͻÿ�.

--Task5_0520. ���缭���� �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�.

--Task6_0520. ���缭���� 2020�� 7�� 7�Ͽ� �ֹ����� ������ �ֹ���ȣ, �ֹ���, ����ȣ, ������ȣ�� ��� ���̽ÿ�. 
--�� �ֹ����� ��yyyy-mm-dd ���ϡ� ���·� ǥ���Ѵ�.

--Task7_0520. ��� �ֹ��ݾ� ������ �ֹ��� ���ؼ� �ֹ���ȣ�� �ݾ��� ���̽ÿ�. 
SELECT o1.orderid, o1.saleprice,
FROM orders o1
WHERE o1.saleprice > (SELECT avg(o2.saleprice)
FROM orders o2
WHERE o2.custid = o1.custid ;

SELECT * FROM orders;
SELECT * FROM imported_book;
SELECT * FROM customer;