SELECT e.EMP_NO, e.EMP_NAME,
CASE 
    WHEN AVG(g.SCORE) >= 96 THEN "S"
    WHEN AVG(g.SCORE) >= 90 THEN "A"
    WHEN AVG(g.SCORE) >= 80 THEN "B"
ELSE "C" 
END AS GRADE,
CASE 
    WHEN AVG(g.SCORE) >= 96 THEN e.SAL*0.2
    WHEN AVG(g.SCORE) >= 90 THEN e.SAL*0.15
    WHEN AVG(g.SCORE) >= 80 THEN e.SAL*0.1
ELSE 0
END AS BONUS
FROM HR_DEPARTMENT d
JOIN HR_EMPLOYEES e ON e.DEPT_ID = d.DEPT_ID
JOIN HR_GRADE g ON g.EMP_NO = e.EMP_NO
GROUP BY e.EMP_NO
ORDER BY 1