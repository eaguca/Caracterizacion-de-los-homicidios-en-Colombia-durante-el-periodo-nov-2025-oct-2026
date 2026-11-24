# Caracterización de los homicidios en Colombia durante el periodo noviembre/2025 - octubre/2026

Equipo E1 · Análisis de Datos Básico · Estud-IA (Capa 2)
Repositorio para el desarrollo de las actividades del curso de Análisis de Datos Básico del programa Estud-IA 2026.

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
El resultado de este proyecto puede ser usado por las entidades públicas para tomar decisiones sobre los homicidios en Colombia y formular políticas de seguridad.

### 2. Pregunta principal
¿En qué lugares y fecha se cometieron los homicidios en Colombia durante el periodo noviembre/2025 - octubre/2026?

### 3. Fuente de datos
Datos públicos suministrados por el Ministerio de Defensa Nacional de Colombia - MinDefensa, Bogotá D.C.
> Enlace: https://www.datos.gov.co/Seguridad-y-Defensa/HOMICIDIO/m8fd-ahd9/about_data

### 4. Qué representa una fila
Cada fila es un hecho y cada hecho tiene al menos una víctima de homicidio. Nos enfocaremos en el total de víctimas.

### 5. Periodo
Los datos cubren el periodo comprendido desde el  01/noviembre/2024 al 31/octubre/2026 pero nos enfocaremos en los datos comprendidos desde el 01/noviembre/2025 - 31/octubre/2026. Solo se amplía la base de datos para poder calcular la tasa de crecimiento respecto al mismo periodo del año anterior.

### 6. Cuatro indicadores
#### i) Total: 
El total de víctimas por municipio.

$$T_m = \text{Total de víctimas por municipio } m$$

#### ii) Promedio:

$$P_m = \frac{T_m}{T_C}$$

$$donde \ T_C = \text{Total de víctimas en Colombia}$$

#### iii) Porcentaje respecto del total:

```math
\%_m = \left[ \frac{T_m}{T_C} \right] \times 100
```
#### iv) Variación:

$$V_m = \left[ \frac{T_m^{actual} - T_m^{anterior}}{T_m^{anterior}} \right] \times 100$$

donde:

- $T_m^{actual}$ : total de víctimas por municipio \(m\) del 1 de noviembre de 2025 al 31 de octubre de 2026.

- $T_m^{anterior}$ :  total de víctimas por municipio \(m\) del 1 de noviembre de 2024 al 31 de octubre de 2025.

### 7. Fuera de alcance
En este proyecto no tendremos en cuenta la hora del homicidio ni los datos sensibles de la víctima y el victimario.

### Dos comparaciones útiles
1. Se comparará el total de homicidios por zona rural o zona urbana.
2. Se comparará el total de homicidios por sexo.

### Riesgos de calidad
1. Podría haber una incongruencia entre el departamento y el municipio donde ocurrió el hecho.
2. Podrían haber datos faltantes.

### Mapa de preguntas **FALTANTE**
- ¿Qué pasó?
- ¿Dónde o cuándo es distinto?
- ¿Qué recomendaría y con qué límites?

## Archivos del proyecto

| Archivo o carpeta | Qué contiene |
|---|---|
| [diccionario.md](diccionario.md) | Qué significa cada columna de la muestra |
| [CHANGELOG .md](CHANGELOG.md) | Decisiones y por qué; uso de IA |
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
