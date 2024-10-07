---
id: 5e46f7f8ac417301a38fb92a
title: Visualizador de datos médicos
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Estamos desarrollando las instrucciones interactivas del currículo de Python. Aunque puedes encontrar los siguientes videos en el canal de YouTube de freeCodeCamp.org que te enseñaran lo necesario para realizar este proyecto:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Cómo analizar datos con Python Pandas</a> (10 horas)

# --instructions--

En este proyecto, visualizarás y realizarás cálculos a partir de datos de exámenes médicos usando `matplotlib`, `seaborn` y `pandas`. Los valores del conjunto de datos (dataset) se recogieron durante los exámenes médicos.

## Data description

Las filas del conjunto de datos representan a los pacientes y las columnas representan información como medidas corporales, resultados de varios análisis de sangre y opciones de estilo de vida. Utilizarás el conjunto de datos para explorar la relación entre enfermedades cardiacas, medidas del cuerpo, indicadores sanguíneos y opciones de estilo de vida.

Nombre del archivo: medical_examination.csv

|                    Feature                    |      Tipo de variable      |   Variable    |                            Tipo de unidad                             |
|:---------------------------------------------:|:--------------------------:|:-------------:|:---------------------------------------------------------------------:|
|                      Age                      |     Objective Feature      |     `age`     |                              int (days)                               |
|                    Height                     |  Característica objetivo   |   `height`    |                               int (cm)                                |
|                    Weight                     |  Característica objetivo   |   `weight`    |                              float (kg)                               |
|                    Gender                     |  Característica objetivo   |   `gender`    |                          código de categoría                          |
|            Systolic blood pressure            | Características del examen |    `ap_hi`    |                                  int                                  |
|           Diastolic blood pressure            | Característica del examen  |    `ap_lo`    |                                  int                                  |
|                  Cholesterol                  | Característica del examen  | `cholesterol` | 1: normal, 2: por encima de lo normal, 3: muy por encima de lo normal |
|                    Glucose                    | Característica del examen  |    `gluc`     | 1: normal, 2: por encima de lo normal, 3: muy por encima de lo normal |
|                    Smoking                    |  Característica subjetiva  |    `smoke`    |                                binario                                |
|                Alcohol intake                 |  Característica subjetiva  |    `alco`     |                                binario                                |
|               Physical activity               |  Característica subjetiva  |   `active`    |                                binario                                |
| Presence or absence of cardiovascular disease |     Variable objetivo      |   `cardio`    |                                binario                                |


## Instructions
By each number in the `medical_data_visualizer.py` file, add the code from the associated instruction number below.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable
2. Crea la columna `sobrepeso` en la variable `df`
3. Normaliza los datos haciendo `0` siempre bueno y `1` siempre malo. Si el valor de `cholesterol` o `gluc` es `1`, haga el valor `0`. Si el valor es mayor que `1`, ajuste el valor a `1`.
4. Dibuja la trama Categórica en la función `draw_cat_plot`
5. Crea un DataFrame para la gráfica del gato usando `pd. elt` con valores de `colesterol`, `gluc`, `humo`, `alco`, `active`y `sobrepeso` en la variable `df_cat`.
6. . Mostrar los recuentos de cada característica. Tendrás que renombrar una de las columnas para que la `catplot` funcione correctamente.
7. Convierte los datos en formato `largo` y crea un gráfico que muestre el recuento de valores de las características categóricas utilizando el siguiente método proporcionado por la importación de la biblioteca abortada: `sns. atplot()`
8. Obtener la figura para la salida y almacenarla en la variable `fig`
9. No modificar las siguientes dos líneas
10. Dibuja el mapa de calor en la función `draw_heat_map`
11. Limpia los datos en la variable `df_heat` filtrando los siguientes segmentos del paciente que representan datos incorrectos:
    - diastolic pressure is higher than systolic (Keep the correct data with `(df['ap_lo'] <= df['ap_hi'])`)
    - height is less than the 2.5th percentile (Keep the correct data with `(df['height'] >= df['height'].quantile(0.025))`)
    - height is more than the 97.5th percentile
    - weight is less than the 2.5th percentile
    - weight is more than the 97.5th percentile
12. Calcular la matriz de correlación y almacenarla en la variable `corr`
13. Genera una máscara para el triángulo superior y guárdala en la variable `máscara`
14. Configura la figura `matplotlib`
15. Trazar la matriz de correlación usando el método proporcionado por la librería `seaborn` import: `sns.heatmap()`
16. No modificar las siguientes dos líneas

## Desarrollo

Write your code in `medical_data_visualizer.py`. Para el desarrollo, puedes utilizar `main.py` para probar tu código.

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
