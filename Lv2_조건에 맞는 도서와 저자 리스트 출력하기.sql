SELECT b.BOOK_ID, a.AUTHOR_NAME, DATE_FORMAT(b.PUBLISHED_DATE, '%Y-%m-%d') PUBLISHED_DATE
FROM BOOK b join AUTHOR a
ON a.AUTHOR_ID = b.AUTHOR_ID
WHERE b.CATEGORY='경제'
order by b.PUBLISHED_DATE