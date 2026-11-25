-- Pregunta: ¿Cuántos hechos occurieron durante el año 2025?
-- Datos: datos/originales/HOMICIDIO_20261123.csv
-- Cifra de control: 27801 filas en total y 13981 después del filtro
SELECT COUNT(*) AS filas
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31';

  
-- Pregunta: ¿Cuántas víctimas de homicidio hubo durante 2025?
-- Datos: datos/originales/HOMICIDIO_20261123.csv
-- Cifra de control: 13981 filas en total y 14038 después del filtro, lo cual tiene sentido porque hay hechos en los que hubo más de una víctima.
SELECT SUM(cantidad)
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31';
