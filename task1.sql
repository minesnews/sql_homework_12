-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

CREATE PROCEDURE time_value(sec_value INT)
BEGIN
  
    DECLARE day_value INT default 0;
    DECLARE hour_value INT default 0;
    DECLARE minut_value INT default 0;
    DECLARE itog TEXT default '';

    DECLARE sec_in_day INT default 86400;
    DECLARE sec_in_hour INT default 3600;
    DECLARE sec_in_minut INT default 60;

    WHILE sec_value >= sec_in_day DO
    SET day_value = sec_value / sec_in_day;
    SET sec_value = sec_value % sec_in_day;
    END WHILE;

    WHILE sec_value >= sec_in_hour DO
    SET hour_value = sec_value / sec_in_hour;
    SET sec_value = sec_value % sec_in_hour;
    END WHILE;

    WHILE sec_value >= sec_in_minut DO
    SET minut_value = sec_value / sec_in_minut;
    SET sec_value = sec_value % sec_in_minut;
    END WHILE;

    SET itog = CONCAT(itog, "'", CONVERT(day_value ,char), " days ", CONVERT(hour_value ,char), " hours ", CONVERT(minut_value ,char), " minutes ",CONVERT(sec_value ,char), " seconds '");

    SELECT itog as 'itog';
      
END;

CALL time_value(123456);