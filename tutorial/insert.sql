-- insert oid count iod: object idengtifier. OID inernally
-- as a primary key for its system tables
SELECT
    *
FROM
    links;

INSERT INTO links (url, NAME, description)
    VALUES ('http://duckduckgo.com', 'DuckDuckGo', 'Privarcy & Simplified Search'), ('https://swisscows.com', 'Swisscows', 'Privacy safe WEB-search')
RETURNING
    *;
