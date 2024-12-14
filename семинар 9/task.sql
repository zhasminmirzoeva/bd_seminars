-- 1
CREATE INDEX idx_name_race_length ON demographics((octet_length(name) * 8), char_length(race));
SELECT octet_length(name) * 8 + char_length(race) AS calculation
FROM demographics;

-- 2
CREATE INDEX idx_bit_length ON demographics((octet_length(name) * 8), (octet_length(race) * 8));
SELECT
    id,
    octet_length(name) * 8 AS name,
    birthday,
    octet_length(race) * 8 AS race
FROM demographics;


-- 3
CREATE INDEX idx_ascii_name_race ON demographics((ascii(left(name, 1))), (ascii(left(race, 1))));
SELECT
    id,
    ascii(left(name, 1)) AS name,
    birthday,
    ascii(left(race, 1)) AS race
FROM demographics;


-- 4
CREATE INDEX idx_full_name ON names((prefix || ' ' || first || ' ' || last || ' ' || suffix));
SELECT
    prefix || ' ' || first || ' ' || last || ' ' || suffix AS title
FROM names;

-- 5
CREATE INDEX idx_padding ON encryption(sha256, md5, sha1);
SELECT
    md5 || repeat('1', char_length(sha256) - char_length(md5)) AS md5,
    repeat('0', char_length(sha256) - char_length(sha1)) || sha1 AS sha1,
    sha256
FROM encryption;


--6
CREATE INDEX idx_commits_contributors ON repositories((left(project, commits)), (right(address, contributors)));
SELECT
    left(project, commits) AS project,
    right(address, contributors) AS address
FROM repositories;


-- 7
CREATE INDEX idx_regex_address ON repositories((regexp_replace(address, '[0-9]', '!', 'g')));
SELECT
    project,
    commits,
    contributors,
    regexp_replace(address, '[0-9]', '!', 'g') AS address
FROM repositories;


-- 8
CREATE INDEX idx_price_per_kg ON products((price / (weight / 1000)), name);
SELECT
    name,
    weight,
    price,
    ROUND(CAST(price / (weight / 1000) AS NUMERIC), 2) AS price_per_kg
FROM products
ORDER BY price_per_kg ASC, name ASC;