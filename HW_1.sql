SELECT * FROM mysampledb.products;

USE MySampleDB
-- 2.Выведите название, производителя и цену 
-- для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)

SELECT ProductName, Manufacturer, Price
FROM products
WHERE ProductCount > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”

SELECT * FROM products
WHERE Manufacturer = 'Samsung';

-- 4. Выведите информацию
--  о телефонах, где суммарный чек больше 100 000 и меньше 145 000**

SELECT *
FROM products
having(ProductCount*Price) > 100000 AND (ProductCount*Price) < 145000;

/*
4.*** С помощью регулярных выражений найти 
(можно использовать операторы “LIKE”, “RLIKE для 4.3” ):
4.1. Товары, в которых есть упоминание "Iphone"
4.2. "Galaxy"
4.3. Товары, в которых есть ЦИФРЫ
4.4. Товары, в которых есть ЦИФРА "8"
*/

SELECT * FROM products
WHERE ProductName LIKE 'iPhone%';

SELECT * FROM products
WHERE ProductName LIKE 'Galaxy%';

SELECT ProductName FROM products
WHERE ProductName RLIKE '[0-9]';

SELECT ProductName FROM products
WHERE ProductName RLIKE '8';