--1
SELECT TRIM(issue_title), TRIM(rating)
FROM issue, info
WHERE issue.info_id = info.info_id
ORDER BY rating

--2
SELECT TRIM(issue_title), price
FROM issue, info
WHERE issue.info_id = info.info_id
ORDER BY price

3--
SELECT TRIM(issue_title), TRIM(imprint)
FROM issue, authors
WHERE issue.authors_id = authors.authors_id
ORDER BY imprint desc