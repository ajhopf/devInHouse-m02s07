--Exerc�cio 5

--Atualizar m�dia geral de um aluno
UPDATE ESTUDANTES
SET MEDIA_GERAL = 7
WHERE ID = 3;
COMMIT;

--Atualize os cursos cujos professores n�o moram em Santa Catarina para o modelo EAD
UPDATE CURSOS
SET MODALIDADE = 'EAD'
WHERE PROFESSOR_ID IN (
    SELECT P.ID 
    FROM PROFESSORES P
    JOIN ENDERECOS E
    ON P.ENDERECO_ID = E.ID
    WHERE E.CIDADE = 'Florian�polis'
    );
COMMIT;

--Exclua um curso:
--Alterando a matr�cula dos estudantes matr�culados no curso 5
UPDATE CURSOS_ESTUDANTES
SET CURSO_ID = 4
WHERE CURSO_ID = 5;

DELETE FROM CURSOS WHERE ID = 5;
COMMIT;