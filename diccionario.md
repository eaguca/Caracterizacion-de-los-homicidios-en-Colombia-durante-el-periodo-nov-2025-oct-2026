# Diccionario de datos

> Explica cada columna de tu muestra para que otra persona la entienda sin preguntarte. Si no sabes algo, escribe **PENDIENTE:** y qué te falta confirmar.

- **Archivo:** `/datos/originales/HOMICIDIO_20261117.xlsx`
- **Fuente y fecha de descarga:** Fuente: >https://www.datos.gov.co/Seguridad-y-Defensa/HOMICIDIO/m8fd-ahd9/about_data< Fecha de descarga: 2026/11/17
- **Cada fila es:** Un hecho, no una víctima. Cada hecho tiene al menos una víctima.
- **Filas en la muestra:** PENDIENTE
- **Campo que identifica cada fila (clave):** Los datos originales no contienen una 'clave', sin embargo, se creará una columna con el nombre 'ID' para identificar cada fila.

## Columnas

Copia este bloque una vez por columna. Hoy, mínimo tres.

### FECHA HECHO
- Qué significa: Es la fecha en la que ocurrió el evento.
- Tipo: fecha
- Unidad o formato: DD/MM/AAAA
- Valores válidos: Tipo fecha en formato DD/MM/AAAA
- Si está vacía, significa: No hay información (no se tiene en cuenta)

### COD_DEPTO
- Qué significa: División Político Administrativa (DIVIPOLA). Es una codificación estándar, numérica, que identifica a las entidades territoriales dándole a cada municipio, una identidad única, inconfundible y homogénea.
- Tipo: Texto
- Unidad o formato: Código de 1 a 2 dígitos.
- Valores válidos: 5, 8, 11, 13, 15, 17, 18, 19, 20, 23, 25, 27, 41, 44, 47, 50, 52, 54, 63, 66, 68, 70, 73, 76, 81, 85, 86, 88, 91, 94, 95, 97, 99
- Si está vacía, significa: No hay información (no se tiene en cuenta)

### DEPARTAMENTO

-Qué significa: Nombre oficial del departamento (o Distrito Capital) de Colombia donde ocurrió el hecho, correspondiente al código DIVIPOLA registrado en `COD_DEPTO`.
- Tipo: Texto
- Unidad o formato: Cadena de texto en mayúsculas (sin tildes o según estandarización DANE/MinDefensa).
- Valores válidos: Los 32 departamentos de Colombia y Bogotá D.C. (ej. ANTIOQUIA, BOGOTÁ D.C., VALLE DEL CAUCA).
- Si está vacía, significa: No hay información (no se tiene en cuenta).

### COD_MUNI
- Qué significa: Código de la División Político-Administrativa (DIVIPOLA) del DANE que identifica de manera única al municipio donde ocurrió el hecho.
- Tipo: Texto
- Unidad o formato: Código numérico almacenado como texto de 4 a 5 dígitos (los primeros 1 o 2 dígitos corresponden al departamento y los últimos 3 al municipio
- Valores válidos: Códigos DIVIPOLA municipales vigentes en Colombia (ej. `05001` para Medellín, `11001` para Bogotá D.C.).
- Si está vacía, significa: No hay información (no se tiene en cuenta).

### MUNICIPIO
- Qué significa: Nombre oficial del municipio o distrito donde ocurrió el hecho, asociado al código `COD_MUNI`.
- Tipo: Texto
- Unidad o formato: Cadena de texto en mayúsculas.
- Valores válidos: Nombres oficiales de los municipios de Colombia según el listado DIVIPOLA del DANE.
- Si está vacía, significa: No hay información (no se tiene en cuenta).

### ZONA
- Qué significa: Clasificación geográfica o territorial del área dentro del municipio donde se registró el homicidio.
- Tipo: Texto
- Unidad o formato: Cadena de texto categórica en mayúsculas.
- Valores válidos:  los valores únicos exactos  `URBANA` o  `RURAL`
- Si está vacía, significa: No hay información (no se tiene en cuenta).

### SEXO
- Qué significa: Sexo biológico o registrado de la(s) víctima(s) del hecho.
- Tipo: Texto
- Unidad o formato: Cadena de texto categórica en mayúsculas.
- Valores válidos: `MASCULINO` y  `FEMENINO`
- Si está vacía, significa: No hay información (no se tiene en cuenta).

### ARMA MEDIO
- Qué significa: Tipo de arma, objeto, sustancia o medio empleado para causar la muerte de la víctima.
- Tipo: Texto
- Unidad o formato: Cadena de texto categórica en mayúsculas.
- Valores válidos: `ARMA DE FUEGO`, `ARMA BLANCA / CORTOPUNZANTE`, `CONTUNDENTES`, `ARTEFACTO EXPLOSIVO/CARGA DINAMITA`, `DRON / EXPLOSIVO`, `GRANADA DE MANO`, `MINA ANTIPERSONA`, `CUERDA/SOGA/CADENA`, `COMBUSTIBLE`, `CINTAS/CINTURON`, `SIN EMPLEO DE ARMAS`, `ARTEFACTO INCENDIARIO`, `QUIMICOS`, `BOLSA PLASTICA`, `PRENDAS DE VESTIR`, `ALMOHADA`, `MOTO BOMBA`, `NO REPORTADO`, `ESCOPOLAMINA`, `ACIDO`, `SUSTANCIAS TOXICAS`, `VENENO`, `LIQUIDOS`, `PAQUETE BOMBA`, `GASES`, `SIN ESTABLECER`, `POLVORA(FUEGOS PIROTECNICOS)`, `CORTANTES`, `GRANADA DE MORTERO`, `PUNZANTES`, `CASA BOMBA`, `CILINDRO BOMBA`, `JERINGA`, `CARRO BOMBA`, `MEDICAMENTOS`, `ROCKET`, `OLLA BOMBA`, `PERSONA BOMBA`, `ALUCINOGENOS`, `0` *(dato atípico en origen, equivalente a sin dato/no reportado)*, `PAPA EXPLOSIVA`, `LICOR ADULTERADO`, `CORTOPUNZANTES`, `ALIMENTOS VENCIDOS`.
- Si está vacía, significa: No hay información no se sabe el Arma 

### MODALIDAD PRESUNTA
- Qué significa: Circunstancia, contexto, mecanismo o modalidad presunta bajo la cual ocurrió el homicidio según el reporte inicial de la autoridad.
- Tipo: Texto
- Unidad o formato: Cadena de texto categórica en mayúsculas *(nota: el archivo original presenta problemas de codificación de caracteres en algunas tildes y eñes, por ejemplo `RIÃ‘AS` en lugar de `RIÑAS`)*.
- Valores válidos: `SICARIATO`, `RIÃ‘AS`, `ATACADOS POR GAO O GAO-R`, `RIÃ‘A O CONFLICTO ENTRE PANDILLAS`, `SIGNOS DE VIOLENCIA FÃSICA (TORTURA)`, `ATRACO`, `ENFRENTAMIENTO ENTRE CRIMEN ORGANIZADO`, `ENFRENTAMIENTO ELN-CRIMEN ORGANIZADO`, `ENFRENTAMIENTO ENTRE DELINCUENCIA ORGANIZADA`, `POR ESTABLECER`, `LINCHAMIENTO`, `ENFRENTAMIENTO ENTRE SUBVERSIVOS`, `VIOLENCIA INTRAFAMILIAR`, `RIÃ‘A ENTRE COMPAÃ‘EROS PERMANENTES`, `DESMEMBRAMIENTO`, `TERRORISMO`, `RIÃ‘A ENTRE HIJO-PADRE`, `ENFRENTAMIENTO ENTRE DELINCUENCIA COMUN`, `RIÃ‘A ENTRE ESPOSOS`, `SECUESTRO`, `VIOLENCIA SEXUAL`, `RIÃ‘A ENTRE HERMANOS`, `PROTESTA SOCIAL`, `ENFRENTAMIENTO FARC-CRIMEN ORGANIZADO`, `RIÃ‘A HIJO-MADRE`, `ATACADOS POR SUBVERSION`, `ENFRENTAMIENTO POLICIA-DELINCUENCIA`, `SACADO FUERZA DE LA RESIDENCIA`, `DEGOLLAMIENTO`, `DECAPITACION`, `AHORCAMIENTO`, `ESTRANGULACION`, `ENFRENTAMIENTO BARRA BRAVAS`, `FORCEJEO`, `LANZAMIENTO AL VACIO`, `ENFRENTAMIENTO EJERCOL-CRIMEN ORGANIZADO`, `FRANCOTIRADOR`, `ENFRENTAMIENTO EJERCOL-SUBVERSION`, `LANZADO DE VEHICULO`, `INCINERACION`, `SOFOCACION`, `AHOGAMIENTO`, `ENFRENTAMIENTO ARMADA-DELINCUENCIA ORGANIZADA`, `ENFRENTAMIENTO ARMADA-CRIMEN ORGANIZADO`, `QUEMADURAS`, `ENFRENTAMIENTO EJERCOL-DELINCUENCIA`, `NO REPORTADA`, `ENFRENTAMIENTO CTI-DELINCUENCIA`, `ENFRENTAMIENTO ARMADA-DELINCUENCIA`, `ENFRENTAMIENTO POLICIA-SUBVERSION`, `ENFRENTAMIENTO POLICIA-CRIMEN ORGANIZADO`, `INHALACION`, `AMOTINAMIENTO CARCEL`, `ENFRENTAMIENTO POLICIA-DELINCUENCIA ORG`, `ENVENENAMIENTO`, `ENFRENTAMIENTO BACRIM-DELINCUENCIA`, `ENFRENTAMIENTO AUTODEFENSAS-SUBVERSION`, `AGRESION`, `ENFRENTAMIENTO DAS-DELINCUENCIA`, `ATACADOS POR AUTODEFENSAS`, `ENFRENTAMIENTO EJERCOL-AUTODEFENSAS`, `ENFRENTAMIENTO DAS-SUBVERSION`, `ENFRENTAMIENTO ENTRE AUTODEFENSAS`, `ENFRENTAMIENTO POLICIA-AUTODEFENSAS`, `ENFRENTAMIENTO DAS-AUTODEFENSAS`, `EMPLEO DE SUSTANCIAS TOXICAS`, `POR EL PADRE`, `FRUSTRACION DELITO`, `SECUESTRO AL PASO (PESCA MILAGROSA)`.
- Si está vacía, significa: se reemplaza por 0 o  No hay información o la modalidad no ha sido determinada al momento del reporte.

### SPOA_CARACTERIZACION
- Qué significa: Categorización o tipificación del hecho asociada al Sistema Penal Oral Acusatorio (SPOA) de la Fiscalía General de la Nación (por ejemplo, si corresponde a homicidio doloso/intencional, feminicidio u otra caracterización judicial).
- Tipo: Texto
- Unidad o formato: Cadena de texto categórica en mayúsculas.
- Valores válidos: los valores únicos exactos   `HOMICIDIO INTENCIONAL O CON DOLO`, `FEMINICIDIO`
- Si está vacía, significa: No hay información o el registro no cuenta con caracterización SPOA asociada.

### CANTIDAD
- Qué significa: número de víctimas de homicidio en ese evento
- Tipo: Número (Entero)
- Unidad o formato: Número entero positivo (conteo de personas/víctimas).
- Valores válidos: Números enteros mayores o iguales a 1.
- Si está vacía, significa: No hay información o el registro es inconsistente (por definición del dataset, cada registro debe tener al menos 1 víctima).
