CREATE OR REPLACE PROCEDURE client_cnpj_formatter_procedure
    (p_CNPJ IN OUT CLIENTE.CNPJ%type)
IS
BEGIN
    p_CNPJ := SUBSTR(p_CNPJ, 1, 3) || '/' || SUBSTR(p_CNPJ, 4, 2);
END;