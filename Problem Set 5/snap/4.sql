SELECT "username" FROM users
JOIN(
    SELECT "to_user_id", COUNT(*) AS "counted_message"
    FROM messages
    GROUP BY "to_user_id"
    ORDER BY "counted_message" DESC
    LIMIT 1
)
"popular_user" ON "users"."id" = "popular_user"."to_user_id";



