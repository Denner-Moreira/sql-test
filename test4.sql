DELIMITER //

CREATE PROCEDURE RelatorioDiario()
BEGIN
    SELECT 
        data_compra,
        SUM(quantidade) AS total_produtos_comprados
    FROM vendas
    GROUP BY data_compra;
END //

DELIMITER ;
