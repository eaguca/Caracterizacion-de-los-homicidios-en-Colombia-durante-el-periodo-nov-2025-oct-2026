# Equipo-E1-Analisis-de-Datos-Basico-Estud-IA-Capa-2-
Repositorio para el desarrollo de las actividades del curso de Análisis de Datos Básico del programa Estud-IA 2026.
# Nombre del proyecto

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
> ¿Quién usará el resultado (una persona o un área) y qué va a decidir con él?
PENDIENTE

### 2. Pregunta principal
¿En qué lugares y fecha se cometieron más homicidios en Colombia durante el año 2025?

### 3. Fuente de datos
Datos públicos suministrados por el Ministerio de Defensa Nacional de Colombia - MinDefensa, Bogotá D.C.
> Enlace: https://www.datos.gov.co/Seguridad-y-Defensa/HOMICIDIO/m8fd-ahd9/about_data

### 4. Qué representa una fila
Cada fila es un hecho y cada hecho tiene al menos una víctima de homicidio.

### 5. Periodo
Los datos cubren el periodo comprendido desde el  31/oct/2024 al 31/oct/2026.

### 6. Cuatro indicadores
> Nombre de cada indicador y, si ya puedes, cómo se calcula (qué se divide entre qué).

1. **Total:** El total de víctimas por municipio.

\[
T_m = \text{Total de víctimas por municipio } m
\]

2. **Promedio:**

\[
P_m = \frac{T_m}{T_C}
\]

donde \(T_C = \text{Total de víctimas en Colombia}\).

3. **Porcentaje:**

\[
\%_m = \left[ \frac{T_m}{T_C} \right] \times 100
\]

4. **Variación:**

\[
V_m = \left[ \frac{T_m^{2026} - T_m^{2025}}{T_m^{2025}} \right] \times 100
\]

donde:

- \(T_m^{2026}\): total de víctimas por municipio \(m\) en 2026.
- \(T_m^{2025}\): total de víctimas por municipio \(m\) en 2025.

### 7. Fuera de alcance
En este proyecto no tendremos en cuenta la hora del homicidio ni los datos sensibles de la víctima y el victimario.

### Dos comparaciones útiles
1. Se comparará el total de homicidios por zona rural o zona urbana.
2. Se comparaá el total de homicidios por sexo.

### Tres riesgos de calidad
> ¿Qué podría venir mal en los datos? ¿Qué harías si la fuente falla?

1. Podría haber una incongruencia entre el departamento y el municipio donde ocurrió el hecho.
2. Podrían haber datos faltantes.
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
