-- SQL - VIEWs

CREATE OR REPLACE VIEW VTESTE
AS
SELECT    EMPNO, ENAME, JOB, SAL
FROM      EMP;


-- VISUALIZANDO UMA VIEW
SELECT * FROM VTESTE;

SELECT ENAME, SAL
FROM VTESTE
WHERE SAL > 2000;


-- CRIANDO NOVA VIEW
CREATE OR REPLACE VIEW VTESTE1
AS
SELECT *
FROM EMP
WHERE DEPTNO = 20;

CREATE OR REPLACE VIEW VTESTE1
AS
SELECT *
FROM EMP
WHERE DEPTNO = 20 WITH CHECK OPTION;

SELECT * FROM VTESTE1;

INSERT INTO VTESTE1 (EMPNO, ENAME, DEPTNO)
VALUES (8, 'IZA', 10);

UPDATE VTESTE1
SET
DEPTNO = 10
WHERE EMPNO = 7876;


-- INSERINDO DADOS COM UMA VIEW
INSERT INTO VTESTE (EMPNO, ENAME, SAL)
VALUES (2, 'IZAEL', 2300);

-- JOIN COM VIEW
SELECT ENAME, JOB, SAL, DNAME
FROM VTESTE1 INNER JOIN DEPT
ON VTESTE1.DEPTNO = DEPT.DEPTNO;


CREATE OR REPLACE VIEW VTEST2
AS
SELECT ENAME, JOB, SAL
FROM EMP;


DELETE FROM VTESTE;


CREATE OR REPLACE VIEW VTESTE3
AS
SELECT ENAME, JOB
FROM EMP WITH READ ONLY;

INSERT INTO VTESTE3 (ENAME, JOB)
VALUES(3, 'LUCIA');


CREATE OR REPLACE VIEW VTESTE4
AS
SELECT *
FROM EMP
WHERE SAL > 1900 WITH CHECK OPTION;

CREATE OR REPLACE VIEW VTESTE5
AS
SELECT JOB, SUM(SAL)SOMA_SAL
FROM EMP
GROUP BY JOB;

CREATE OR REPLACE VIEW VTESTE6
AS
SELECT EMPNO AS CODIGO, ENAME NOME, SAL
FROM EMP;

SELECT * FROM VTESTE6;

INSERT INTO VTESTE6(CODIGO, NOME, SAL)
VALUES(7, 'CARLOS', 2500);

-- APAGANDO VIEW
DROP VIEW VTESTE6;







