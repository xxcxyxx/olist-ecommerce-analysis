-- 01_table_check.sql
-- SQLite 데이터베이스 내 테이블 목록 확인

SELECT name
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;
