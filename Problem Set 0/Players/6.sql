SELECT "first_name","last_name","debut" FROM players
WHERE "birth_city" IS 'Pittsburgh' AND "birth_state" IS 'PA'
ORDER BY "debut" DESC, "first_name" ASC;
