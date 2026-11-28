## Datos limpios
 Esta carpeta contiene el archivo `HOMICIDIOS_limpio.csv` con los datos limpios, es decir, después de aplicarles los siguientes cambios.

- Unificar escritura de DEPARTAMENTO · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Unificar escritura de MUNICIPIO · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Unificar escritura de ZONA · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Unificar escritura de SEXO · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Unificar escritura de ARMA MEDIO · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Unificar escritura de  MODALIDAD PRESUNTA · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Unificar escritura de SPOA_CARACTERIZACION · 0 filas · corregir · El mismo valor estaba escrito de varias formas
- Fecha imposible · 0 filas · revisar · La fecha no existe (mes 13); no se inventa
- Código de departamento no numérico · 0 filas · revisar · El código del departamento está en letras; no se adivina
- Código de municipio no numérico · 0 filas · revisar · El código del municipio está en letras; no se adivina
- Cantidad de víctimas no numérico · 0 filas · revisar · La cantidad de víctimas está en letras; no se adivina
- Reemplazar en  MODALIDAD PRESUNTA: SIGNOS DE VIOLENCIA FÍSICA (TORTURA) -> SIGNOS DE VIOLENCIA FISICA (TORTURA) · 412 filas · corregir · Estandarizar nombres eliminando tildes

|index|regla|filas afectadas|acción|motivo|antes|después|
|---|---|---|---|---|---|---|
|0|Unificar escritura de DEPARTAMENTO|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|1|Unificar escritura de MUNICIPIO|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|2|Unificar escritura de ZONA|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|3|Unificar escritura de SEXO|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|4|Unificar escritura de ARMA MEDIO|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|5|Unificar escritura de  MODALIDAD PRESUNTA|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|6|Unificar escritura de SPOA\_CARACTERIZACION|0|corregir|El mismo valor estaba escrito de varias formas|27801|27801|
|7|Fecha imposible|0|revisar|La fecha no existe \(mes 13\); no se inventa|27801|27801|
|8|Código de departamento no numérico|0|revisar|El código del departamento está en letras; no se adivina|27801|27801|
|9|Código de municipio no numérico|0|revisar|El código del municipio está en letras; no se adivina|27801|27801|
|10|Cantidad de víctimas no numérico|0|revisar|La cantidad de víctimas está en letras; no se adivina|27801|27801|
|11|Reemplazar en  MODALIDAD PRESUNTA: SIGNOS DE VIOLENCIA FÍSICA \(TORTURA\) -\> SIGNOS DE VIOLENCIA FISICA \(TORTURA\)|412|corregir|Estandarizar nombres eliminando tildes|27801|27801|

**Número de filas totales:** 27801

**Número de filas en vista de análisis:** 13879
