CREATE OR REPLACE PROCEDURE INSERT_SEGMERCADO
(p_ID IN SEGMERCADO.ID%type, p_DESCRIPTION IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
    INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, upper(p_DESCRIPTION));
    COMMIT;
END;


/* Running the procedure: 
* EXECUTE INSERT_SEGMERCADO(3, `Esportivo`);

BEGIN
    INSERT_SEGMERCADO(3, `Esportivo`)
END
*/