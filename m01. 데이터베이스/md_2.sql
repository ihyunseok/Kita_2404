SELECT * FROM book;
SELECT bookid, bookname, publisher, price FROM book;

SELECT * FROM customer;
SELECT * FROM orders;
SELECT * FROM imported_book;

-- �ߺ����� ����ϴ� ��ɾ� : DISTINCT
SELECT DISTINCT publisher FROM book;

-- Q1. ������ 10,000�� �̻��� ������ �˻�
SELECT * FROM book
WHERE price > 10000;

-- Q2. ������ 10,000�� �̻� 20,000�� ������ ������ �˻��Ͻÿ�. 2���� ���
SELECT * FROM book

-- 2 - 1��° ��� 
WHERE price >= 10000 and price <= 20000;

-- 2 - 2��° ���
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000;

-- Task1_0517. ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��' �� ������ �˻��Ͻÿ�. (3���� ���)

-- Task1_1��° ���
SELECT * FROM book
WHERE (publisher='�½�����') OR (publisher='���ѹ̵��')

-- Task1_2��° ���
SELECT * FROM book
WHERE publisher LIKE'�½�����' or publisher LIke'���ѹ̵��';

-- Task1_3��° ���
SELECT * FROM book
WHERE publisher LIKE'%��%' or publisher LIKE'%����%';

-- Task2_0517. ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��' �� �ƴ� ������ �˻�
SELECT * FROM book
WHERE NOT (publisher='�½�����') AND NOT (publisher='���ѹ̵��')

-- LIKE : �ڿ� ���� ������ �ش� ���̺��� ã�� �� ����
SELECT bookname, publisher FROM book
WHERE bookname LIKE '�౸�� ����'

-- %__% : % ���̿� �ִ� �ܾ ������ ����Ʈ���� �ش� �ܾ ���Ե� �ܾ ã�� �� ����.
SELECT bookname, publisher FROM book
WHERE bookname LIKE'%�౸%';

-- �����̸��� ���� �� ��° ��ġ�� '��'��� ���ڿ��� ���� ����
-- _ �ϳ��� ��ĭ 
SELECT bookname, publisher FROM book
WHERE bookname LIKE'_��%';

-- Task3_0517. �౸�� ���� ���� �� ������ 20,000�� �̻��� ������ �˻��Ͻÿ�.
SELECT bookname, price FROM book
WHERE bookname LIKE'%�౸%' and price >= 20000;

-- ORDER BY : �⺻ �ø����� ����
SELECT * FROM book
ORDER BY price;

-- ORDER BY () DESC : �⺻ �������� ����
SELECT * FROM book
ORDER BY price DESC;

-- Q. ������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �˻��Ͻÿ�.
-- 1�������� price ������ ���� �Ŀ� 2�������δ� bookname���� ������.
SELECT * FROM book
ORDER BY price, bookname ;

-- SUM(������) / AS "SUM ��������� ������ ���� ����"
SELECT * FROM orders;
SELECT SUM(saleprice) AS "SUM_saleprice"
FROM orders
WHERE custid = 2;

-- GROUP BY : �����͸� Ư�� ���ؿ� ���� �׷�ȭ�ϴµ� ���. �̸� ���� ���� �Լ�(SUM, AVG, MAX, MIN, COUNT)
SELECT SUM(saleprice) AS total,
AVG(saleprice) AS average, 
MIN(saleprice) AS mininum,
MAX(saleprice) AS Maxinum
FROM orders;

-- �� �Ǹž��� custid �������� �׷�ȭ
-- bookid�� 5���� ū ���� 
SELECT * FROM orders;
SELECT custid, COUNT(*) AS ��������, SUM(saleprice) AS "�� �Ǹž�"
FROM orders
--WHERE bookid > 5
GROUP BY custid;

-- bookid�� 5���� ū ���� + ���� ������ 2���� ū ����  
SELECT custid, COUNT(*) AS ��������, SUM(saleprice) AS "�� �Ǹž�"
FROM orders
WHERE bookid > 5
GROUP BY custid
HAVING COUNT(*) > 2;

--Task4_0517. 2�� �迬�� ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�.
SELECT SUM(saleprice) AS "SUM_saleprice"
FROM orders
WHERE custid = 2;

--Task5_0517. ������ 8,000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�. 
--��, �� �� �̻� ������ ���� ���Ͻÿ�.
SELECT custid, COUNT(*) AS "���� �� ����"
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING COUNT(*) >= 2; 

--Task6_0517. ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�.
-- ���̸�(CUSTOMER/NAME) / ���� �̸�(BOOK/BOOKNAME) / �����ǸŰ���(BOOK/PRICE) 
-- customer ���̺��� custid, name ȣ�� / book ���̺��� bookid, bookname, price ȣ��
SELECT c.custid, c.name, b.bookid, b.bookname, b.price 
FROM customer c
INNER JOIN orders o ON c.custid = o.custid
INNER JOIN book b ON o.bookid = b.bookid;

--Task7_0517. ������ �ֹ��� ��� ������ �� �Ǹž��� ���ϰ�, ������ �����Ͻÿ�.
SELECT c.custid, c.name, SUM(b.price) AS "�� �Ǹž�"
FROM customer c
INNER JOIN orders o ON c.custid = o.custid
INNER JOIN book b ON o.bookid = b.bookid
GROUP BY c.custid, c.name
ORDER BY c.custid ;











