-- Get a list of the most visited cities.

SELECT properties.city AS city, COUNT(*) AS total_reservations
FROM reservations
JOIN properties ON properties.id = property_id
GROUP BY properties.city
ORDER BY total_reservations DESC;