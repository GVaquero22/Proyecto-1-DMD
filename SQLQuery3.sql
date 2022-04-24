

SELECT * FROM parque_vehicular_datos
SELECT * FROM Esquelas WHERE Ves_Departamento IN ('USULUTAN','CHALATENANGO','MORAZAN','CUSCATLAN','SAN SALVADOR','SANTA ANA','SONSONATE',
                           'CABAÑAS','LA PAZ','SAN VICENTE','SAN MIGUEL','AHUACHAPAN','LA LIBERTAD','LA UNION')
--UPDATE Esquelas SET Ves_Nro_Esquela = 200001 WHERE Ves_Nro_Esquela = 'ï»¿80'
SELECT COUNT(*) FROM Esquelas WHERE Ves_Nro_Esquela = 200001


SELECT CAST(Ves_Fecha AS DATETIME) FROM Esquelas 

SELECT COUNT(*),Ves_Fecha FROM Esquelas GROUP BY Ves_Fecha ORDER BY COUNT(Ves_Fecha) DESC


--DROP TABLE DB_Esquelas
CREATE TABLE DB_Esquelas (Id INT IDENTITY(1,1),
                          Ves_Nro_Esquela BIGINT,
						  Ves_Fecha DATE,
						  Ves_Tipo_Falta VARCHAR(50),
						  Ves_Falta_Descripcion VARCHAR(500),
						  Ves_Departamento VARCHAR(50),
						  Ves_Estado VARCHAR(25),
						  Ves_Estado_Descripcion VARCHAR(50),
						  Ves_Valor NUMERIC(12,2),
						  Ves_Interes NUMERIC(12,2))

INSERT INTO DB_Esquelas (Ves_Nro_Esquela,Ves_Fecha,Ves_Tipo_Falta,Ves_Falta_Descripcion,Ves_Departamento,Ves_Estado,Ves_Estado_Descripcion,Ves_Valor,Ves_Interes)
SELECT Ves_Nro_Esquela,Ves_Fecha,Ves_Tipo_Falta,Ves_Falta_Descripcion,Ves_Departamento,Ves_Estado,Ves_Estado_Descripcion,Ves_Valor,Ves_Interes FROM Esquelas 
WHERE Ves_Departamento IN ('USULUTAN','CHALATENANGO','MORAZAN','CUSCATLAN','SAN SALVADOR','SANTA ANA','SONSONATE',
                           'CABAÑAS','LA PAZ','SAN VICENTE','SAN MIGUEL','AHUACHAPAN','LA LIBERTAD','LA UNION')  AND
	  Ves_Estado IN ('IPT','SUS','RAT','ANL','APL','IRI','ANA','IPR','CBR','PPZ','ANC','INC','INI','REV','ANU','') AND
	  Ves_Estado_Descripcion IN ('ANALISIS APELADA','SUSPENSIVO','RECURSO INCONFORMIDAD INICIADO','PENDIENTE DE PAGO',
	                             'ANALISIS','RATIFICADA','CANCELADA','IMPROCEDENTE','REVOCADA','EN APELACION',
								 'INCONSISTENTE','IMPUESTA','ANULADA','ANALISIS COBRADA','CARGADA','EN PAGOS A PLAZO') AND
	  ISNUMERIC(Ves_Valor)=1 AND ISNUMERIC(Ves_Interes)=1

