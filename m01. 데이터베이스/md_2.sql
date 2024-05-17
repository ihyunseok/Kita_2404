SELECT * FROM book;
SELECT bookid, bookname, publisher, price FROM book;

SELECT * FROM customer;
SELECT * FROM orders;
SELECT * FROM imported_book;

-- 중복없이 출력하는 명령어 : DISTINCT
SELECT DISTINCT publisher FROM book;

-- Q1. 가격이 10,000원 이상인 도서를 검색
SELECT * FROM book
WHERE price > 10000;

-- Q2. 가격이 10,000원 이상 20,000원 이하인 도서를 검색하시오. 2가지 방법
SELECT * FROM book

-- 2 - 1번째 방법 
WHERE price >= 10000 and price <= 20000;

-- 2 - 2번째 방법
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000;

-- Task1_0517. 출판사가 '굿스포츠' 혹은 '대한미디어' 인 도서를 검색하시오. (3가지 방법)

-- Task1_1번째 방법
SELECT * FROM book
WHERE (publisher='굿스포츠') OR (publisher='대한미디어')

-- Task1_2번째 방법
SELECT * FROM book
WHERE publisher LIKE'굿스포츠' or publisher LIke'대한미디어';

-- Task1_3번째 방법
SELECT * FROM book
WHERE publisher LIKE'%굿%' or publisher LIKE'%대한%';

-- Task2_0517. 출판사가 '굿스포츠' 혹은 '대한미디어' 가 아닌 도서를 검색
SELECT * FROM book
WHERE NOT (publisher='굿스포츠') AND NOT (publisher='대한미디어')

-- LIKE : 뒤에 오는 변수를 해당 테이블에서 찾을 수 있음
SELECT bookname, publisher FROM book
WHERE bookname LIKE '축구의 역사'

-- %__% : % 사이에 있는 단어를 넣으면 리스트에서 해당 단어가 포함된 단어를 찾을 수 있음.
SELECT bookname, publisher FROM book
WHERE bookname LIKE'%축구%';

-- 도서이름의 왼쪽 두 번째 위치에 '구'라는 문자열을 갖는 도서
-- _ 하나당 한칸 
SELECT bookname, publisher FROM book
WHERE bookname LIKE'_구%';

-- Task3_0517. 축구에 관한 도서 중 가격이 20,000원 이상인 도서를 검색하시오.
SELECT bookname, price FROM book
WHERE bookname LIKE'%축구%' and price >= 20000;

-- ORDER BY : 기본 올림차순 정렬
SELECT * FROM book
ORDER BY price;

-- ORDER BY () DESC : 기본 내림차순 정렬
SELECT * FROM book
ORDER BY price DESC;

-- Q. 도서를 가격순으로 검색하고, 가격이 같으면 이름순으로 검색하시오.
-- 1차적으로 price 순서로 정렬 후에 2차적으로는 bookname으로 정리함.
SELECT * FROM book
ORDER BY price, bookname ;

-- SUM(부제목) / AS "SUM 결과값으로 저장할 제목 지정"
SELECT * FROM orders;
SELECT SUM(saleprice) AS "SUM_saleprice"
FROM orders
WHERE custid = 2;

-- GROUP BY : 데이터를 특정 기준에 따라 그룹화하는데 사용. 이를 통해 집계 함수(SUM, AVG, MAX, MIN, COUNT)
SELECT SUM(saleprice) AS total,
AVG(saleprice) AS average, 
MIN(saleprice) AS mininum,
MAX(saleprice) AS Maxinum
FROM orders;

-- 총 판매액을 custid 기준으로 그룹화
-- bookid가 5보다 큰 조건 
SELECT * FROM orders;
SELECT custid, COUNT(*) AS 도서수량, SUM(saleprice) AS "총 판매액"
FROM orders
--WHERE bookid > 5
GROUP BY custid;

-- bookid가 5보다 큰 조건 + 도서 수량이 2보다 큰 조건  
SELECT custid, COUNT(*) AS 도서수량, SUM(saleprice) AS "총 판매액"
FROM orders
WHERE bookid > 5
GROUP BY custid
HAVING COUNT(*) > 2;

--Task4_0517. 2번 김연아 고객이 주문한 도서의 총 판매액을 구하시오.
SELECT SUM(saleprice) AS "SUM_saleprice"
FROM orders
WHERE custid = 2;

--Task5_0517. 가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 구하시오. 
--단, 두 권 이상 구매한 고객만 구하시오.
SELECT custid, COUNT(*) AS "도서 총 수량"
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING COUNT(*) >= 2; 

--Task6_0517. 고객의 이름과 고객이 주문한 도서의 판매가격을 검색하시오.
-- 고객이름(CUSTOMER/NAME) / 도서 이름(BOOK/BOOKNAME) / 도서판매가격(BOOK/PRICE) 
-- customer 테이블에서 custid, name 호출 / book 테이블에서 bookid, bookname, price 호출
SELECT c.custid, c.name, b.bookid, b.bookname, b.price 
FROM customer c
INNER JOIN orders o ON c.custid = o.custid
INNER JOIN book b ON o.bookid = b.bookid;

--Task7_0517. 고객별로 주문한 모든 도서의 총 판매액을 구하고, 고객별로 정렬하시오.
SELECT c.custid, c.name, SUM(b.price) AS "총 판매액"
FROM customer c
INNER JOIN orders o ON c.custid = o.custid
INNER JOIN book b ON o.bookid = b.bookid
GROUP BY c.custid, c.name
ORDER BY c.custid ;











