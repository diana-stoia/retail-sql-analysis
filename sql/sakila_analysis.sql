-- Which films generate the highest revenue?

SELECT
    f.title,
    SUM(p.amount) AS total_revenue
FROM film f
JOIN inventory i
    ON f.film_id = i.film_id
JOIN rental r
    ON i.inventory_id = r.inventory_id
JOIN payment p
    ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY total_revenue DESC;

-- Observation:
-- Revenue differences may be influenced by rental duration
-- and customer payment behavior.
