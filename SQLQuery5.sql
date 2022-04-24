

Select  * From DB_Esquelas

Select TOP 5 * From parque_vehicular_datos

--CREAREMOS UNA TABLA PARA REALIZAR EL ANALISIS DE REGLAS DE ASOCIACION

CREATE TABLE Reglas_Asociacion_Esquelas (Ves_Estado VARCHAR(20),
                                         SanSalvador BIT,
										 Usulutan    BIT,
										 LaLibertad  BIT,
										 SanVicente  BIT,
										 LaPaz       BIT,
										 Ahuchapan   BIT,
										 Morazan     BIT,
										 SanMiguel   BIT,
										 Cuscatlan   BIT,
										 LaUnion     BIT,
										 SantaAna    BIT,
										 Chalatenango BIT)

CREATE TABLE DATOS_GROUP_BY (Ves_Departamento VARCHAR(30),Ves_Estado VARCHAR(30),CountEstado INT)

INSERT INTO DATOS_GROUP_BY
--CON ESTE QUERY SABES POR DEPARTAMENTO CUALES ESTADOS DE ESQUELAS SON LAS MAS COMUNES Y SI APARECEN EN TODOS LOS ESTADOS
SELECT Ves_Departamento , Ves_Estado, COUNT(Ves_Estado) AS 'COUNT ESTADO' FROM DB_Esquelas GROUP BY Ves_Departamento , Ves_Estado

SELECT  COUNT(Ves_Estado),Ves_Estado FROM DB_Esquelas  GROUP BY Ves_Estado
--INSERTAMOS EN NUESTRA TABLA PARA EL ANALISIS DE REGLAS DE ASOCIACION
--PRIMERO INSERTAREMOS TODOS LOS ESTADOS Y LUEGO HAREMOS UN UPDATE A CADA REGISTRI

INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('ANC')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('IPR')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('INI')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('INC')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('CBR')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('IPT')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('SUS')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('RAT')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('APL')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('ANL')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('PPZ')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('IRI')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('REV')
INSERT INTO Reglas_Asociacion_Esquelas (Ves_Estado)
VALUES ('ANU')



SELECT * FROM Reglas_Asociacion_Esquelas

UPDATE Reglas_Asociacion_Esquelas SET SanSalvador = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN SALVADOR' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  SantaAna = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SANTA ANA' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  Cuscatlan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CUSCATLAN' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  Morazan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'MORAZAN' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
                                      SanMiguel = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN MIGUEL' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  Ahuchapan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'AHUACHAPAN' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  SanVicente = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN VICENTE' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  LaPaz = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA PAZ' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
                                      LaUnion = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA UNION' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  Usulutan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'USULUTAN' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  LaLibertad = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA LIBERTAD' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END,
									  Chalatenango = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CHALATENANGO' AND Ves_Estado='ANU')>=1 THEN 1
                                                         ELSE 0 END
WHERE Ves_Estado = 'ANU'




UPDATE Reglas_Asociacion_Esquelas SET SanSalvador = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN SALVADOR' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  SantaAna = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SANTA ANA' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  Cuscatlan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CUSCATLAN' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  Morazan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'MORAZAN' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
                                      SanMiguel = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN MIGUEL' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  Ahuchapan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'AHUACHAPAN' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  SanVicente = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN VICENTE' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  LaPaz = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA PAZ' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
                                      LaUnion = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA UNION' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  Usulutan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'USULUTAN' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  LaLibertad = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA LIBERTAD' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END,
									  Chalatenango = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CHALATENANGO' AND Ves_Estado='IPR')>=1 THEN 1
                                                         ELSE 0 END
WHERE Ves_Estado = 'IPR'




UPDATE Reglas_Asociacion_Esquelas SET SanSalvador = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN SALVADOR' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  SantaAna = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SANTA ANA' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  Cuscatlan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CUSCATLAN' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  Morazan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'MORAZAN' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
                                      SanMiguel = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN MIGUEL' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  Ahuchapan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'AHUACHAPAN' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  SanVicente = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN VICENTE' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  LaPaz = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA PAZ' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
                                      LaUnion = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA UNION' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  Usulutan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'USULUTAN' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  LaLibertad = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA LIBERTAD' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END,
									  Chalatenango = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CHALATENANGO' AND Ves_Estado='INC')>=1 THEN 1
                                                         ELSE 0 END
WHERE Ves_Estado = 'INC'


										
								
										
UPDATE Reglas_Asociacion_Esquelas SET SanSalvador = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN SALVADOR' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  SantaAna = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SANTA ANA' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  Cuscatlan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CUSCATLAN' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  Morazan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'MORAZAN' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
                                      SanMiguel = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN MIGUEL' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  Ahuchapan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'AHUACHAPAN' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  SanVicente = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN VICENTE' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  LaPaz = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA PAZ' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
                                      LaUnion = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA UNION' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  Usulutan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'USULUTAN' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  LaLibertad = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA LIBERTAD' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END,
									  Chalatenango = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CHALATENANGO' AND Ves_Estado='INI')>=1 THEN 1
                                                         ELSE 0 END
WHERE Ves_Estado = 'INI'







UPDATE Reglas_Asociacion_Esquelas SET SanSalvador = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN SALVADOR' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  SantaAna = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SANTA ANA' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  Cuscatlan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CUSCATLAN' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  Morazan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'MORAZAN' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
                                      SanMiguel = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN MIGUEL' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  Ahuchapan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'AHUACHAPAN' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  SanVicente = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'SAN VICENTE' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  LaPaz = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA PAZ' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
                                      LaUnion = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA UNION' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  Usulutan = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'USULUTAN' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  LaLibertad = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'LA LIBERTAD' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END,
									  Chalatenango = CASE WHEN (SELECT COUNT(*) FROM DATOS_GROUP_BY WHERE Ves_Departamento = 'CHALATENANGO' AND Ves_Estado='')>=1 THEN 1
                                                         ELSE 0 END
WHERE Ves_Estado = ''
