DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_sucursal`(p_id_sucursal INT) RETURNS char(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN
declare resultado char (255);
set resultado= (Select provincia_sucursal from sucursales where id_sucursal=p_id_sucursal);
RETURN resultado;
END$$
DELIMITER ;



select get_sucursal (1) Ubicación_Sucursal

DELIMITER $$

CREATE FUNCTION tipo_precio_producto (precio INT)
RETURNS char (255)
NO SQL
BEGIN 
DECLARE cantidad char (255);

IF (precio) > 8000 then
     RETURN CONCAT("PRECIO INGRESADO; ", precio, "ES ALTO");
     else
     RETURN CONCAT("PRECIO INGRESADO; ", precio, "ES BAJO");
     END IF;

END $$

SELECT TIPO_PRECIO_PRODUCTO (9000);

SELECT TIPO_PRECIO_PRODUCTO (8000);


