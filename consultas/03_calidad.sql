-- 1. ¿Filas o víctimas?
-- Cuenten las filas y sumen cantidad. ¿Dan lo mismo? ¿Cuántas filas tienen una cantidad mayor que 1? Su indicador principal, ¿cuenta filas o víctimas? Escríbanlo en una frase.

-- Pregunta: ¿Cuántas filas hay del año 2025?	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 27801 filas en todo el dataset.

SELECT COUNT(*) AS filas_2025
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31';

-- Resultado: Hay 13981 filas que se interpretan como hechos en los cuales fueron asesinadas personas durante el año 2025. Debe ser menor que la cifra de control lo cual se cumple.

--

-- Pregunta: ¿Cuánto es la suma de la columna CANTIDAD para el año 2025?	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 13981 filas en 2025.

SELECT SUM(cantidad)
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31';

-- Resultado: La suma de la columna CANTIDAD es 14038. Esto indica que hubo 14038 víctimas de homicidio durante el año 2025. Debe ser mayor que la cifra de control lo cual se cumple.

--

-- Pregunta: ¿Cuántas filas tienen una cantidad mayor que uno para el año 2025?	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 13981 filas en 2025.

SELECT COUNT(*) AS filas
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31' AND cantidad > 1;

-- Resultado: 52. Esto indica que en 52 hechos hubo más de una víctima de homicidio durante 2025.

-- Nuestro indicador principal cuenta víctimas, es decir, suma el contenido de la columna cantidad.


-- 2.	Filas idénticas: ¿copias o víctimas distintas?

-- 2.1	¿Cuántas filas son idénticas a otra?

-- Pregunta: ¿Cuántas filas son idénticas a otra para el año 2025?	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 13981 filas en 2025.

WITH filas_2025 AS (
    SELECT *
    FROM datos
    WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31'
),
conteo_grupos AS (
    SELECT *, COUNT(*) as repeticiones
    FROM filas_2025
    GROUP BY ALL
)
SELECT SUM(repeticiones) AS total_filas_duplicadas
FROM conteo_grupos
WHERE repeticiones > 1;

-- Resultado: 3660. Durante el año 2025, hay exactamente 3660 filas que son idénticas a otras, es decir, que comparten exactamente los mismos valores en cada una de las columnas.

-- 2.2.	Miren las que más se repiten

-- Pregunta: ¿Cuáles son las filas idénticas que más se repiten para el año 2025?
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 3660 filas repetidas en 2025.

WITH filas_2025 AS (
    SELECT *
    FROM datos
    WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31'
)
SELECT *, COUNT(*) as repeticiones
FROM filas_2025
GROUP BY ALL
HAVING COUNT(*) > 1
ORDER BY repeticiones DESC
LIMIT 10;

-- Resultado: La que más se repite es la de Teorama (Norte de Santander) del 16/01/2025: 19 veces. Luego vienen dos con 11 repeticiones cada una: Bogotá D.C., 23/01/2025, sicariato; y Cali, 02/11/2025, sicariato.

-- 2.3.	¿Son el mismo homicidio copiado o pueden ser víctimas distintas del mismo día, en el mismo municipio y con la misma arma?
-- A priori pensamos que son víctimas distintas en donde se repiten los atributos de la tabla, sin embargo, con la información que se tiene, no podríamos estar seguros más allá de la confianza que se le tiene a la fuente.

-- 2.4.	¿Qué columna le faltaría a la base para saberlo?
-- A la base de datos le faltaría una llave primaria única que identificara cada hecho (fila).

-- 2.5.	Con lo que tienen, ¿las quitarían el jueves? ¿Qué cifra cambiaría si lo hicieran?
-- No se pueden limpiar las filas repetidas porque se parte de la base que no son datos duplicados sino diferentes.

-- 3.	Medellín: dos filtros, ¿una cifra?

-- 3.1.	Filtren Medellín por el nombre del municipio y, aparte, por el código (COD_MUNI).

-- Pregunta: ¿Cuántos hechos ocurrieron en Medellín para el año 2025? Filtrar por la columna MUNICIPIO.	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 13981 filas en 2025.

SELECT COUNT (*) AS filas
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31' AND "MUNICIPIO" = 'MEDELLIN';

-- Resultado: 332. Lo que indica el número de hechos ocurridos en Medellín en el año 2025. Debe ser menor que la cifra de control lo cual se cumple.

--

-- Pregunta: ¿Cuántos hechos ocurrieron en Medellín para el año 2025? Filtrar por la columna COD_MUNI.	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 332 filas para Medellín en 2025.

SELECT COUNT (*) AS filas
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31' AND "COD_MUNI" = '5001';

-- Resultado: El resultado es 332 lo cual es igual que la consulta anterior, lo que indica que hay congruencia en la base de datos.

-- 

-- 3.2.	¿Cuántas filas y cuántas víctimas da cada filtro? ¿Coinciden? 

-- Pregunta: ¿Cuántas víctimas de homicidio hubo en Medellín para el año 2025? Filtrar por la columna MUNICIPIO.	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 332 filas para Medellín en 2025.

SELECT SUM(CANTIDAD) AS cantidad_total
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31' AND "MUNICIPIO" = 'MEDELLIN';

-- Resultado: Hubo 333 víctimas de homicidio en Medellín en el año 2025. El valor debe ser igual o superior a la cifra de control lo cual se cumple.

-- 

-- Pregunta: ¿Cuántas víctimas de homicidio hubo en Medellín para el año 2025? Filtrar por la columna COD_MUNI.	
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 332 filas para Medellín en 2025.

SELECT SUM(CANTIDAD) AS cantidad_total
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31' AND "COD_MUNI" = '5001';

-- Resultado: Hubo 333 víctimas de homicidio en Medellín en el año 2025. El valor debe ser igual al de la consulta anterior lo cual se cumple.

-- 3.3.	Después, Medellín por zona: ¿los grupos suman el total?

-- Pregunta: ¿Cuántas víctimas de homicidio hubo en Medellín para el año 2025 discriminando por zona rural y urbana?
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hay 332 filas para Medellín en 2025.

SELECT ZONA, SUM(CANTIDAD) AS total_victimas
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31'
  AND "COD_MUNI" = '5001'
GROUP BY ZONA;

-- Resultado: Hubo 319 homicidios en zona urbana y 14 en zona rural de Medellín en el año 2025. La suma de ambos da 333 lo cual concuerda con el total de víctimas de consultas anteriores.

-- 

-- 4.	¿Categoría o dato que falta?

--4.1.	Agrupen por la columna ‘MODALIDAD PRESUNTA' y por sexo.

-- Pregunta: ¿Cuántas víctimas de homicidio agrupados por ‘Modalidad Presunta’ y ‘Sexo’ hubo en 2025? 
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: Hubo 14038 víctimas de homicidio en 2025.

SELECT " MODALIDAD PRESUNTA", SEXO, COUNT(*) AS total_casos
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY " MODALIDAD PRESUNTA", SEXO
ORDER BY " MODALIDAD PRESUNTA" ASC, total_casos DESC;

-- Resultado: Hay una víctima de sicariato en el que su sexo aparece como ‘SIN ESTABLECER’. Consideramos que esta puede ser una nueva categoría ya que las autoridades cuentas con todos los elementos necesarios para identificar el sexo de una víctima y, tal vez, detrás de este resultado haya razones burocráticas que desconocemos. 

-- 5.	¿El periodo está completo?

-- Pregunta: ¿Se cuenta con todos los meses entre nov/2025 y oct/2026?
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: El resultado deben ser 12 meses.

SELECT
    SUBSTR("FECHA HECHO", 4, 7) AS mes_anio,
    COUNT(*) AS total_casos
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2025-11-01' AND '2026-10-31'
GROUP BY mes_anio
ORDER BY strptime('01/' || mes_anio, '%d/%m/%Y') ASC;

-- Resultado: En efecto se cuentan con datos en los 12 meses que vamos a analizar.

-- 

-- Pregunta: ¿Se cuenta con todos los meses en el año 2024? 
-- Datos: datos/originales/HOMICIDIO_20261123.csv 
-- Cifra de control: El resultado deben ser 12 meses en 2024.

SELECT
    SUBSTR("FECHA HECHO", 4, 7) AS mes_anio,
    COUNT(*) AS total_casos
FROM datos
WHERE strptime("FECHA HECHO", '%d/%m/%Y') BETWEEN '2024-11-01' AND '2025-10-31'
GROUP BY mes_anio
ORDER BY strptime('01/' || mes_anio, '%d/%m/%Y') ASC;

-- Resultado: En efecto se cuentan con datos en los 12 meses del año anterior al que vamos a analizar. Estos datos nos servirán para calcular la variación mes a mes respecto al año anterior.

-- Con la muestra que vamos a trabajar, el dato más “raro” es 09/2026 = 977, por ser un mínimo claro. El segundo punto llamativo es 10/2026 = 1046, que confirma una caída inusual de dos meses. Los picos de 12/2025 y 07/2026 son altos.

-- Con la muestra que usaremos para calcular la variación, el dato claramente atípico es 02/2025 = 945, por ser un mínimo fuerte. Los valores 04/2025 = 1.076 y 10/2025 = 1108 son bajos. Los picos de 12/2024 = 1238 y 08/2025 = 1235 son altos.
