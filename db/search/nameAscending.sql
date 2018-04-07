SELECT * FROM Products as p
INNER JOIN 
(
    Select * FROM product_subtype
    INNER JOIN product_type
    on (product_type.type_id = product_subtype.type_id)
) as t
on (t.subtype_id = p.subtype_id)
WHERE p.description ~* $1
AND p.price >= $2
and p.price <= $3
order By p.description
OFFSET $4
Limit 11;