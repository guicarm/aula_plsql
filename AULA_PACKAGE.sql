-- Especifica��o 
CREATE OR REPLACE PACKAGE PKG_PACOTE IS 
    PROCEDURE CALCULA_REAJUSTE(P_SAL_ATUAL IN NUMBER);
END PKG_PACOTE;
/

-- Corpo (Body)
CREATE OR REPLACE PACKAGE BODY PKG_PACOTE IS
    PROCEDURE CALCULA_REAJUSTE(P_SAL_ATUAL IN NUMBER) IS
        V_SAL_REAJ NUMBER(7,2);
    BEGIN
        V_SAL_REAJ := P_SAL_ATUAL * 1.25;
        DBMS_OUTPUT.PUT_LINE('Sal�rio Atual: R$' || P_SAL_ATUAL );
        DBMS_OUTPUT.PUT_LINE('Sal�rio Reajustado: R$' || V_SAL_REAJ);
    END CALCULA_REAJUSTE;
END PKG_PACOTE;
/

SET SERVEROUTPUT ON
EXECUTE PKG_PACOTE.calcula_reajuste(2000);

ALTER PACKAGE PKG_PACOTE COMPILE;
ALTER PACKAGE PKG_PACOTE COMPILE BODY;

DROP PACKAGE PKG_PACOTE;

-- PRIVIL�GIO DE ACESSO
GRANT EXECUTE ON PKG_PACOTE TO PUBLIC;




-- Especifica��o 
CREATE OR REPLACE PACKAGE PKG_CALCULADORA IS 
    PROCEDURE CALCULADORA (P_SAL_ATUAL IN NUMBER);
END PKG_CALCULADORA;
/

-- Corpo (Body)
CREATE OR REPLACE PACKAGE BODY PKG_CALCULADORA IS
    PROCEDURE CALCULADORA(P_SAL_ATUAL IN NUMBER) IS
        V_NOVO_SAL_MIN NUMBER(7,2);
    BEGIN
        V_NOVO_SAL_MIN := P_SAL_ATUAL * 1.25;
        DBMS_OUTPUT.PUT_LINE('Sal�rio Atual: R$' || P_SAL_ATUAL );
        DBMS_OUTPUT.PUT_LINE('Sal�rio Reajustado: R$' ||  V_NOVO_SAL_MIN);
    END CALCULADORA;
END PKG_CALCULADORA;
/


ALTER PACKAGE PKG_CALCULADORA COMPILE;
ALTER PACKAGE PKG_CALCULADORA COMPILE BODY;

SET SERVEROUTPUT ON
EXECUTE PKG_PACOTE.calcula_reajuste(1320);-