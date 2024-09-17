-- 2. Выведите только чётные числа от 1 до 10.
-- Пример: 2,4,6,8,10

CREATE PROCEDURE even_numbers()
BEGIN
    DECLARE number INT default 0;

    WHILE number < 10 DO
    SET number = number + 2;
    SELECT number as ' ';
    END WHILE;

END;

CALL even_numbers();