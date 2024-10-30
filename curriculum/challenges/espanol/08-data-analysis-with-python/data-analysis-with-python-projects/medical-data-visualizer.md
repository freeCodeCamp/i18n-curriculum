---
id: 5e46f7f8ac417301a38fb92a
title: Visualizador de datos médicos
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

Estarás <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">trabajando en este proyecto con nuestro código inicial en Gitpod</a>.

Estamos desarrollando las instrucciones interactivas del currículo de Python. Aunque puedes encontrar los siguientes videos en el canal de YouTube de freeCodeCamp.org que te enseñaran lo necesario para realizar este proyecto:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Cómo analizar datos con Python Pandas</a> (10 horas)

# --instructions--

En este proyecto, visualizarás y realizarás cálculos a partir de datos de exámenes médicos usando `matplotlib`, `seaborn` y `pandas`. Los valores del conjunto de datos (dataset) se recogieron durante los exámenes médicos.

## Descripción de datos

Las filas del conjunto de datos representan a los pacientes y las columnas representan información como medidas corporales, resultados de varios análisis de sangre y opciones de estilo de vida. Utilizarás el conjunto de datos para explorar la relación entre enfermedades cardiacas, medidas del cuerpo, indicadores sanguíneos y opciones de estilo de vida.

Nombre del archivo: medical_examination.csv

|                    Característica                     |      Tipo de variable      |   Variable    |                            Tipo de unidad                             |
|:-----------------------------------------------------:|:--------------------------:|:-------------:|:---------------------------------------------------------------------:|
|                         Edad                          |  Característica objetivo   |     `age`     |                              int (días)                               |
|                        Altura                         |  Característica objetivo   |   `height`    |                               int (cm)                                |
|                         Peso                          |  Característica objetivo   |   `weight`    |                              float (kg)                               |
|                         Sexo                          |  Característica objetivo   |   `gender`    |                          código de categoría                          |
|              Presión arterial sistólica               | Características del examen |    `ap_hi`    |                                  int                                  |
|              Presión arterial diastólica              | Característica del examen  |    `ap_lo`    |                                  int                                  |
|                      Colesterol                       | Característica del examen  | `cholesterol` | 1: normal, 2: por encima de lo normal, 3: muy por encima de lo normal |
|                        Glucosa                        | Característica del examen  |    `gluc`     | 1: normal, 2: por encima de lo normal, 3: muy por encima de lo normal |
|                        Fumador                        |  Característica subjetiva  |    `smoke`    |                                binario                                |
|                  Consumo de alcohol                   |  Característica subjetiva  |    `alco`     |                                binario                                |
|                   Actividad física                    |  Característica subjetiva  |   `active`    |                                binario                                |
| Presencia o ausencia de enfermedades cardiovasculares |     Variable objetivo      |   `cardio`    |                                binario                                |


## Instrucciones

Create a chart similar to `examples/Figure_1.png`, where we show the counts of good and bad outcomes for the `cholesterol`, `gluc`, `alco`, `active`, and `smoke` variables for patients with `cardio=1` and `cardio=0` in different panels.

Por cada número en el archivo `medical_data_visualizer.py` agrege el codigo del numero de instruccion asociado a continuación.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable.
2. Add an `overweight` column to the data. To determine if a person is overweight, first calculate their BMI by dividing their weight in kilograms by the square of their height in meters. If that value is > 25 then the person is overweight. Use the value `0` for NOT overweight and the value `1` for overweight.
3. Normaliza los datos haciendo `0` siempre bueno y `1` siempre malo. Si el valor de `cholesterol` o `gluc` es `1`, haga el valor `0`. Si el valor es mayor que `1`, ajuste el valor a `1`.
4. Draw the Categorical Plot in the `draw_cat_plot` function.
5. Crea un DataFrame para la gráfica del gato usando `pd. elt` con valores de `colesterol`, `gluc`, `humo`, `alco`, `active`y `sobrepeso` en la variable `df_cat`.
6. . Mostrar los recuentos de cada característica. Tendrás que renombrar una de las columnas para que la `catplot` funcione correctamente.
7. Convert the data into `long` format and create a chart that shows the value counts of the categorical features using the following method provided by the seaborn library import: `sns.catplot()`.
8. Get the figure for the output and store it in the `fig` variable.
9. Do not modify the next two lines.
10. Draw the Heat Map in the `draw_heat_map` function.
11. Limpia los datos en la variable `df_heat` filtrando los siguientes segmentos del paciente que representan datos incorrectos:
    - la presión diastólica es mayor que la sistólica (Mantenga los datos correctos con `(df['ap_lo'] <= df['ap_hi'])`)
    - la altura es menor que el porcentaje de 2,5 (Mantenga los datos correctos con `(df['height'] >= df['height'].quantile(0.025))`
    - la altura es superior al 97.5 por ciento
    - el peso es inferior al 2.5 por ciento
    - el peso es mayor al 97.5 por ciento
12. Calculate the correlation matrix and store it in the `corr` variable.
13. Generate a mask for the upper triangle and store it in the `mask` variable.
14. Set up the `matplotlib` figure.
15. Plot the correlation matrix using the method provided by the `seaborn` library import: `sns.heatmap()`.
16. Do not modify the next two lines.

## Desarrollo

Escribe tu código en `medical_data_visualizer.py`. Para el desarrollo, puedes utilizar `main.py` para probar tu código.

## Pruebas

Las pruebas unitarias para este proyecto están en `test_module.py`. Hemos importado las pruebas de `test_module.py` a `main.py` para tu conveniencia.

## Envío

Copia el enlace de tu proyecto y envíalo a freeCodeCamp.

# --hints--

Debería pasar todas las pruebas de Python.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
