WITH salary_per_hit AS (
    SELECT "players"."id" AS player_id, "players"."first_name", "players"."last_name",
           ("salaries"."salary" / "performances"."H") AS salary_per_hit
    FROM "performances"
    JOIN "players" ON "performances"."player_id" = "players"."id"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id" AND "salaries"."year" = "performances"."year"
    WHERE "performances"."year" = 2001
    AND "performances"."H" > 0  -- Ensure no division by zero
    ORDER BY salary_per_hit ASC
    LIMIT 10
),
salary_per_rbi AS (
    SELECT "players"."id" AS player_id, "players"."first_name", "players"."last_name",
           ("salaries"."salary" / "performances"."RBI") AS salary_per_rbi
    FROM "performances"
    JOIN "players" ON "performances"."player_id" = "players"."id"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id" AND "salaries"."year" = "performances"."year"
    WHERE "performances"."year" = 2001
    AND "performances"."RBI" > 0  -- Ensure no division by zero
    ORDER BY salary_per_rbi ASC
    LIMIT 10
)
-- Select players in both the salary_per_hit and salary_per_rbi lists
SELECT DISTINCT "p"."first_name", "p"."last_name"
FROM "players" p
JOIN "salary_per_hit" sph ON "p"."id" = "sph"."player_id"
JOIN "salary_per_rbi" spr ON "p"."id" = "spr"."player_id"
ORDER BY "p"."last_name" ASC;
