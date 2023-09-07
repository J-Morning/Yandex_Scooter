-- 1 задание
SELECT c.login, COUNT(o.id) AS order_count
FROM "Couriers" c
JOIN "Orders" o ON o."courierId" = c.id
WHERE o."inDelivery" = true
GROUP BY c.login;

-- 2 задание
SELECT "track","inDelivery","cancelled","finished",
CASE
WHEN "inDelivery" = true THEN 1
WHEN "cancelled" = true THEN -1
WHEN "finished" = true THEN 2
ELSE 0
END
FROM "Orders";