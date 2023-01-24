-- 1
SELECT issue_title, rating
FROM issue, info
WHERE issue.info_id = info.info_id
ORDER BY rating

-- 2
SELECT issue_title, imprint
FROM issue, authors
WHERE issue.authors_id = authors.authors_id
ORDER BY imprint

-- 3
SELECT issue_title, price
FROM issue, info
WHERE issue.info_id = info.info_id
ORDER BY price