SELECT      -- LISTA DE CAMPPOS PARA PROJE��O
FROM        -- NOMES AS LINHAS
ON          -- ESPECIFICA AS COLUNAS PARA A JUN��O
WHERE       -- FILTRO DE LINHAS NA TABELA ANTES DE AGRUPAR
GROUP BY    -- ADRUPA AS LINHAS RESULTANTES
HAVING      -- FILTRA LINHAS APOS AGRUPAR
ORDER BY    -- ORDENA/CLASSIFICA AS LINHAS RESULTANTES

-- Exerc�cios de laborat�rio � Lista 7

-- 46. Consulte o nome dos empregados, sal�rio e nome do departamento da tabela EMP e
-- DEPT considerando apenas quem foi contratado em 81. Utilize o comando LIKE.
    SELECT    ENAME, SAL, DNAME, HIREDATE
    FROM      EMP INNER JOIN DEPT
    ON        EMP.DEPTNO = DEPT.DEPTNO
    WHERE     HIREDATE LIKE '%81'
    
    -- OU
    
    SELECT    E.ENAME, E.SAL, D.DNAME, E.HIREDATE
    FROM      EMP E INNER JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    WHERE     E.HIREDATE LIKE '%81'
    
    -- OU
    
    SELECT    ENAME, SAL, DNAME, HIREDATE
    FROM      EMP INNER JOIN DEPT
    ON        EMP.DEPTNO = DEPT.DEPTNO
    WHERE     HIREDATE LIKE '__/__/81'
    

-- 47. Fa�a uma consulta que apresente o menor sal�rio, maior sal�rio, m�dia
-- salarial por
-- departamento, por�m, traga o nome do departamento no lugar do c�digo.
    SELECT    D.DNAME, MIN(E.SAL), MAX(E.SAL), ROUND(AVG(E.SAL),2)
    FROM      EMP E JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    GROUP BY  D.DNAME
    -- HAVING    MIN(E.SAL) > 900
    -- ORDER BY  D.DNAME
    
    -- ou
    
    SELECT    D.DNAME, MIN(E.SAL), MAX(E.SAL), ROUND(AVG(E.SAL),2)
    FROM      EMP E RIGHT JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    GROUP BY  D.DNAME
    -- ORDER BY  D.DNAME
    

-- 48. Consulte todos os empregados contratados no ano de 87, mostrando seu
-- nome,sal�rio e seu departamento (nome).
    SELECT    E.ENAME, E.SAL, D.DNAME
    FROM      EMP E JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    WHERE     E.HIREDATE BETWEEN '01/01/87' AND '31/12/87'
    
    --OU
    
    SELECT    E.ENAME, E.SAL, D.DNAME
    FROM      EMP E JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    WHERE     E.HIREDATE >= '01/01/87' AND E.HIREDATE <= '31/12/87'
    

-- 49. Consulte o nome dos empregados, seu cargo e sal�rio e o nome do seu depto,
-- classificados em ordem crescente por cargo e nome do empregado, nesta ordem.
    SELECT    E.ENAME, E.JOB, E.SAL, D.DNAME
    FROM      EMP E JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    ORDER BY  E.JOB, E.ENAME


-- 50. Consulte a quantidade de funcion�rios por departamento (nome).
    SELECT    D.DNAME, COUNT(E.EMPNO)
    FROM      EMP E JOIN DEPT D
    ON        E.DEPTNO = D.DEPTNO
    GROUP BY  D.DNAME


-- 51. Qual o custo dos empregados por departamento (nome).
SELECT    D.DNAME, SUM(E.SAL)
FROM      EMP E JOIN DEPT D
ON        E.DEPTNO = D.DEPTNO
GROUP BY  D.DNAME


-- 52. Consulte o n�mero e o nome da categoria do filme e quantos filmes
-- existem na locadora por categoria.

-- 53. Consulte quantos filmes cada cliente alugou, mostrando o pr�-nome do
-- cliente e a quantidade de filmes ao lado.

-- 54. Fa�a uma consulta para mostrar o nome dos empregados, a data de
-- admiss�o, e seis meses ap�s a data de admiss�o.



-- ATEN��O: Para fazer os pr�ximos exerc�cios, EXECUTE os scripts de cria��o/inser��o dados
-- das tabelas ALUNO, PROF, PAGTO que est�o na Central do Aluno com o nome de
-- Script_TabAcad

-- 55. Fa�a uma consulta que apresente todos os alunos matriculados no per�odo de
-- 15/03/08 a 30/04/08, mostrando apenas seu C�digo, Nome e Data de Nascimento,
-- classificados por Nome. Altere os cabe�alhos para C�d.Aluno, Nome Aluno e Data
-- Nasc, respectivamente.

-- 56. Fa�a uma consulta que traga todos os pagamentos da aluna Paola Moraes,
-- mostrando apenas as colunas correspondentes ao c�digo do professor, nome do
-- professor, data do pagamento e valor, apresentando os cabe�alhos C�digo, Nome
-- Professor, Data Pagto e Valor Pago, respectivamente.

-- 57. Fa�a uma consulta que apresente o total pago por alunos no ano de 2007 e a m�dia
-- de valores pagos por eles. Apresente seu Nome ao inv�s do c�digo.

-- 58. Consulte quantos pagamentos foram feitos para cada professor no 1o semestre de
-- 2008, classificando por professor. Apresente seu nome ao inv�s do c�digo do
-- professor.