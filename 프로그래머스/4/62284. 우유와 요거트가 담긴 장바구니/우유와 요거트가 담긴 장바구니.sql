

SELECT CART_ID
FROM (SELECT DISTINCT CART_ID FROM CART_PRODUCTS WHERE NAME = 'MILK') M
JOIN (SELECT DISTINCT CART_ID FROM CART_PRODUCTS WHERE NAME = 'YOGURT') Y USING (CART_ID)
ORDER BY CART_ID;