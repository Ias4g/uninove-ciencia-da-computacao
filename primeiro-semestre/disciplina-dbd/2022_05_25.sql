SELECT      -- LISTA DE CAMPOS PARA PROJEÇÃO.
FROM        -- NOMES DA TABELAS.
ON          -- COLUNAS QUE ESTABELECEM A JUNÇÃO.
WHERE       -- FIÇTRA LIMHAS NA TABELA ANTES DE AGRUPAR.
GROUP BY    -- AGRUPA AS LINHAS RESULTANDTES.
HAVING      -- FILTRA LINHAS APÓS AGRUPAR.
ORDER BY    -- ORDENA/CLASSIFICA AS LINHAS RESULTANTES.

-- ######################### INNER JOIN #########################

SELECT  CODFILME, TITULO DESCRICAO
FROM    FILME INNER JOIN CATEGORIA
ON      FILME.CODCATEG = CATEGOARIA.CODCATEG

SELECT  EMPNO, ENAME, EMP.DEPTNO, DEPT.DEPTNO, DNAME, LOC
FROM    EMP INNER JOIN DEPT
ON      EMP.DEPTNO = DEPT.DEPTNO

SELECT  EMPNO, ENAME, EMP.DEPTNO, DEPT.DEPTNO, DNAME, LOC
FROM    EMP INNER JOIN DEPT
ON      EMP.DEPTNO = DEPT.DEPTNO
WHERE   EMP.DEPT = IN (10,20)

SELECT  E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DEPTNO, D.DNAME
FROM	EMP E INNER JOIN DEPT D
ON		E.DEPTNO = D.DEPTNO

-- ################### LEFT/RIGHT OUTER JOIN #####################

SELECT  E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DEPTNO, D.DNAME
FROM	EMP E LEFT OUTER JOIN DEPT D
ON		E.DEPTNO = D.DEPTNO

SELECT  E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DEPTNO, D.DNAME
FROM	DEPT D RIGHT OUTER JOIN EMP E
ON		E.DEPTNO = D.DEPTNO

SELECT  E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DEPTNO, D.DNAME
FROM	DEPT D LEFT OUTER JOIN DEMP E
ON		E.DEPTNO = D.DEPTNO

-- ################### FULL OUTER JOIN #####################

SELECT  E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DEPTNO, D.DNAME
FROM	DEPT D FULL OUTER JOIN DEMP E
ON		E.DEPTNO = D.DEPTNO