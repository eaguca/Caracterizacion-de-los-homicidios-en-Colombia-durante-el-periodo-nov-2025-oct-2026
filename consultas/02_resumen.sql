-- Pregunta: ¿Cuántos homicidios occurrieron en 2025 discriminados por zona rural y urbana?
-- Datos: datos/originales/HOMICIDIO_20261123.csv
-- Cifra de control: 14038 es el total de víctimas del 2025. Después de correr la consulta tenemos 9310 (zona urbana) y 4728 (zona rural), cuya suma nos da la cifra de control.
SELECT ZONA, SUM(CANTIDAD) AS total_homicidios
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY ZONA;
