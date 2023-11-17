-- write your queries here
-- 1. 
SELECT * FROM owners FULL JOIN vehicles ON  owner_id = owners.id;
-- 2
SELECT first_name, last_name, COUNT(*) as count FROM owners JOIN vehicles ON owner_id = owners.id GROUP BY owners.id ORDER BY owners.first_name;
-- 3
SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(owner_id) as count FROM owners JOIN vehicles ON owner_id = owners.id GROUP BY owners.id HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY owners.first_name DESC;