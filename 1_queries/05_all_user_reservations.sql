-- Show all reservations for a user.

SELECT properties.id, properties.title, properties.cost_per_night, reservations.start_date, AVG(rating) AS average_rating
FROM property_reviews
JOIN properties ON properties.id = property_id
JOIN reservations ON reservations.id = reservation_id
WHERE reservations.guest_id = 1
  AND reservations.end_date < NOW()::DATE
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date ASC
LIMIT 10;