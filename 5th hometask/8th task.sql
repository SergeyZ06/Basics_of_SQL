-- (по желанию) Подсчитайте произведение чисел в столбце таблицы.

-- Таблица с исходными данными.
WITH t1 AS (
	SELECT *
    FROM (
		SELECT 1 AS value
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3
		UNION ALL
		SELECT 4
		UNION ALL
		SELECT 5
		) t
	)

-- Запрос данных из исходной таблицы с использованием логарифмов:
-- сумма логарифмов равна логарифму произведения.
-- Округление в большую сторону используется для нивелирования погрешности вычислений.
SELECT CEILING(EXP(SUM(LOG(t1.value))))
FROM t1