SELECT COUNT(i.FISH_TYPE) FISH_COUNT, n.FISH_NAME
FROM FISH_INFO i
JOIN FISH_NAME_INFO n
ON i.FISH_TYPE = n.FISH_TYPE
GROUP BY n.FISH_NAME
ORDER BY FISH_COUNT DESC
