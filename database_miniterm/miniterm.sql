WITH RECURSIVE MinitermGenerator (P1, P2, P3) AS (
    -- Base case: start with first predicate in both True and False states
    SELECT 1 AS P1, 1 AS P2, 1 AS P3 FROM DUAL
    UNION ALL
    SELECT 1, 1, 0 FROM DUAL
    UNION ALL
    SELECT 1, 0, 1 FROM DUAL
    UNION ALL
    SELECT 1, 0, 0 FROM DUAL
    UNION ALL
    SELECT 0, 1, 1 FROM DUAL
    UNION ALL
    SELECT 0, 1, 0 FROM DUAL
    UNION ALL
    SELECT 0, 0, 1 FROM DUAL
    UNION ALL
    SELECT 0, 0, 0 FROM DUAL
)
SELECT P1, P2, P3 FROM MinitermGenerator;
