CREATE OR REPLACE PROCEDURE INSERT_INTO_CLIENT
(p_ID IN CLIENTE.ID%type, p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type,
 p_CNPJ IN CLIENTE.CNPJ%type, p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type,
 p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type)
IS
    v_CATEGORIA CLIENTE.CATEGORIA%type;
BEGIN
    
    v_CATEGORIA := CLIENT_CATEGORY(p_FATURAMENTO_PREVISTO);

    INSERT INTO CLIENTE(ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
    VALUES (p_ID, p_RAZAO_SOCIAL, p_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;
END;