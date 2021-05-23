create or replace NONEDITIONABLE PROCEDURE format_cnpj
    (p_CNPJ IN OUT CLIENTE.CNPJ%type)
IS
BEGIN
    p_CNPJ := SUBSTR(p_CNPJ, 1, 2) || '/' || SUBSTR(p_CNPJ, 3, 2) || '-' ||
    SUBSTR(p_CNPJ, 5, 1);
END;