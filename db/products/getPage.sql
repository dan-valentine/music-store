SELECT * FROM Products as p
INNER JOIN 
(
    Select * FROM product_subtype
    INNER JOIN product_type
    on (product_type.type_id = product_subtype.type_id)
) as t
on (t.subtype_id = p.subtype_id)
WHERE type LIKE $1
AND subtype LIKE $2
OFFSET $3
LIMIT 11;