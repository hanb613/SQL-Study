SELECT i.ID, n.FISH_NAME, i.LENGTH
FROM FISH_INFO i
JOIN FISH_NAME_INFO n 
    ON i.FISH_TYPE = n.FISH_TYPE
WHERE (i.FISH_TYPE, i.LENGTH) IN
(
    SELECT FISH_TYPE, MAX(LENGTH)
    FROM FISH_INFO
    GROUP BY FISH_TYPE
)
ORDER BY i.ID;