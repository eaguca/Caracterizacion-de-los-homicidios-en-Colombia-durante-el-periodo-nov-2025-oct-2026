# Equipo-E1-Analisis-de-Datos-Basico-Estud-IA-Capa-2-
Repositorio para el desarrollo de las actividades del curso de Análisis de Datos Básico del programa Estud-IA 2026.
# Nombre del proyecto

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
> ¿Quién usará el resultado (una persona o un área) y qué va a decidir con él?

PENDIENTE

### 2. Pregunta principal
> Una sola pregunta que ayude a tomar esa decisión.

¿En qué lugares y fecha se cometieron más homicidios en Colombia durante el año 2025?

### 3. Fuente de datos
> Enlace o nombre de la fuente. ¿Es pública o es una muestra de práctica inventada (sintética)? Si es inventada, dilo aquí.

Datos suministrados por: Ministerio de Defensa Nacional - MinDefensa, Bogotá D.C.
Enlace: https://www.datos.gov.co/Seguridad-y-Defensa/HOMICIDIO/m8fd-ahd9/about_data

### 4. Qué representa una fila
> Completa la frase: «Cada fila es…». ¿Qué campo distingue una fila de otra?

Cada fila es un hecho y cada hecho tiene al menos una víctima.

### 5. Periodo
> ¿Qué fechas cubren los datos?

Desde el  31/oct/2024 al 31/oct/2026.

### 6. Cuatro indicadores
> Nombre de cada indicador y, si ya puedes, cómo se calcula (qué se divide entre qué).

1. Total: El total de víctimas por municipio.
2. Promedio: (Total de víctimas por municipio)/(Total de víctimas en Colombia)
3. Porcentaje: [(Total de víctimas por municipio)/(Total de víctimas en Colombia)]*100
4. Variación: {[(Total de víctimas por municipio en 2026)-(Total de víctimas por municipio en 2025)]/Total de víctimas por municipio en 2025}*100

### 7. Fuera de alcance
> Lo que este proyecto NO va a responder.

En este proyecto no tendremos en cuenta la hora del homicidio ni los datos sensibles de la víctima y el victimario.

## Si alcanzas hoy (para el jueves es obligatorio)

### Dos comparaciones útiles
> Por ejemplo: por mes, por comuna, por categoría.

1. 
2. 

### Tres riesgos de calidad
> ¿Qué podría venir mal en los datos? ¿Qué harías si la fuente falla?

1. 
2. 
3. 

### Mapa de preguntas
- ¿Qué pasó?
- ¿Dónde o cuándo es distinto?
- ¿Qué recomendaría y con qué límites?

## Archivos del proyecto

| Archivo o carpeta | Qué contiene |
|---|---|
| [diccionario.md](diccionario.md) | Qué significa cada columna de la muestra |
| [bitacora.md](bitacora.md) | Decisiones y por qué; uso de IA |
| `datos/originales/` | La muestra tal como se descargó (no se modifica) |
| `consultas/` | Consultas SQL comentadas (sesión 3) |
| `notebooks/` | Cuadernos de Colab (sesiones 3 a 5) |
| `tablero/` | Capturas y enlace del tablero (sesión 6) |

## Reglas del repositorio

- Es **público**: nada de datos personales (nombres, cédulas, teléfonos, correos, direcciones), contraseñas ni llaves.
- Lo que está en `datos/originales/` no se modifica: se guarda tal como se descargó.
- Cada commit dice en su mensaje **qué** se decidió y **por qué**.

---

Proyecto desarrollado en Estud-IA · Capa 2 · Análisis de Datos.
