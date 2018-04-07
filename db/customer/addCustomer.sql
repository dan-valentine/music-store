insert into Customers (
    auth_id, user_name
) VALUES (
    $1, $2
)
RETURNING *;
