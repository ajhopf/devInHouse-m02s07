-- Exercício 6

--1. Busque os cursos que possuem número máximo de alunos maior do que 30 e que sejam presenciais.

--Alterando curso para ter retorno na busca
UPDATE CURSOS
SET NUMERO_MAXIMO_ALUNOS = 45
WHERE ID = 6;
COMMIT;

SELECT * FROM CURSOS C
WHERE C.NUMERO_MAXIMO_ALUNOS > 30 AND MODALIDADE = 'PRESENCIAL';


--2. Busque os professores nascidos na América do Sul.
SELECT * FROM PROFESSORES P
WHERE NACIONALIDADE IN ('AR', 'BO', 'BR', 'CL', 'CO', 'EC', 'GY', 'GF', 'PY', 'PE', 'SR', 'UY', 'VE');

--3. Busque os alunos cujos nomes comecem com a letra J.
SELECT * FROM ESTUDANTES
WHERE NOME LIKE 'J%';
--NENHUM RETORNO COM J - EXEMPLO MOSTRANDO COM E:
SELECT * FROM ESTUDANTES
WHERE NOME LIKE 'E%';

--4. Busque os alunos com a média geral maior do que 7, ordenando do maior para o menor.
SELECT * FROM ESTUDANTES
WHERE MEDIA_GERAL > 7
ORDER BY MEDIA_GERAL DESC;

--5. Busque por todos os cursos ministrados por professoras.
SELECT * FROM CURSOS C
JOIN PROFESSORES P
ON C.PROFESSOR_ID = P.ID
WHERE P.GENERO = 'Feminino';

--6. Busque por todos os alunos que estão matriculados em cursos EAD.
SELECT DISTINCT E.ID, E.NOME FROM ESTUDANTES E
JOIN CURSOS_ESTUDANTES CE ON CE.ESTUDANTE_ID = E.ID
JOIN CURSOS C ON CE.CURSO_ID = C.ID
WHERE C.MODALIDADE = 'EAD';

