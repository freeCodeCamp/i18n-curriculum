---
id: 5e46f7f8ac417301a38fb92a
title: Visualizador de dados médicos
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Ainda estamos desenvolvendo a parte instrucional interativa do currículo Python. Por enquanto, aqui estão alguns vídeos no canal do freeCodeCamp.org do YouTube que ensinarão tudo o que você precisa saber para completar este projeto:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Como analisar dados em Python com o Pandas</a> (10 hours)

# --instructions--

Neste projeto, você vai visualizar e fazer cálculos a partir de dados dos exames médicos usando o `matplotlib`, o `seaborn` e o `pandas`. Os valores do dataset foram coletados durante exames médicos.

## Data description

As linhas do dataset representam os pacientes e as colunas representam informações como as medições corporais, os resultados de várias análises de sangue e escolhas de estilo de vida. Você usará o dataset para explorar a relação entre a doença cardíaca, medição corporal, marcadores sanguíneos e escolhas de estilo de vida.

Nome do arquivo: medical_examination.csv

|                    Feature                    | Tipo de variável  |   Variável    |                     Tipo de valor                     |
|:---------------------------------------------:|:-----------------:|:-------------:|:-----------------------------------------------------:|
|                      Age                      | Objective Feature |     `age`     |                      int (days)                       |
|                    Height                     | Recurso objetivo  |   `height`    |                       int (cm)                        |
|                    Weight                     | Recurso objetivo  |   `weight`    |                      float (kg)                       |
|                    Gender                     | Recurso objetivo  |   `gender`    |                   código categórico                   |
|            Systolic blood pressure            | Recurso de exame  |    `ap_hi`    |                          int                          |
|           Diastolic blood pressure            | Recurso de exame  |    `ap_lo`    |                          int                          |
|                  Cholesterol                  | Recurso de exame  | `cholesterol` | 1: normal, 2: acima do normal, 3: bem acima do normal |
|                    Glucose                    | Recurso de exame  |    `gluc`     | 1: normal, 2: acima do normal, 3: bem acima do normal |
|                    Smoking                    | Recurso subjetivo |    `smoke`    |                        binário                        |
|                Alcohol intake                 | Recurso subjetivo |    `alco`     |                        binário                        |
|               Physical activity               | Recurso subjetivo |   `active`    |                        binário                        |
| Presence or absence of cardiovascular disease |   Variável alvo   |   `cardio`    |                        binário                        |


## Instructions

Create a chart similar to `examples/Figure_1.png`, where we show the counts of good and bad outcomes for the `cholesterol`, `gluc`, `alco`, `active`, and `smoke` variables for patients with `cardio=1` and `cardio=0` in different panels.

By each number in the `medical_data_visualizer.py` file, add the code from the associated instruction number below.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable.
2. Add an `overweight` column to the data. To determine if a person is overweight, first calculate their BMI by dividing their weight in kilograms by the square of their height in meters. If that value is > 25 then the person is overweight. Use the value `0` for NOT overweight and the value `1` for overweight.
3. Normalize os dados, tornando `0` sempre bom e `1` sempre ruim. Se o valor de `cholesterol` ou de `gluc` for 1, defina o valor como `0`. Se o valor for maior que `1`, defina o valor como `1`.
4. Draw the Categorical Plot in the `draw_cat_plot` function.
5. Crie um DataFrame para o gráfico de categorias usando `pd.melt` com valores de `cholesterol`, `gluc`, `smoke`, `alco`, `active` e `overweight` na variável `df_cat`.
6. Agrupe e reformate os dados em `df_cat` para dividi-los por `cardio`. Mostre as contagens de cada recurso. Você terá que renomear uma das colunas para que o `catplot` funcione corretamente.
7. Convert the data into `long` format and create a chart that shows the value counts of the categorical features using the following method provided by the seaborn library import: `sns.catplot()`.
8. Get the figure for the output and store it in the `fig` variable.
9. Do not modify the next two lines.
10. Draw the Heat Map in the `draw_heat_map` function.
11. Limpe os dados na variável `df_heat` filtrando os seguintes segmentos de pacientes que representam dados incorretos:
    - diastolic pressure is higher than systolic (Keep the correct data with `(df['ap_lo'] <= df['ap_hi'])`)
    - height is less than the 2.5th percentile (Keep the correct data with `(df['height'] >= df['height'].quantile(0.025))`)
    - height is more than the 97.5th percentile
    - weight is less than the 2.5th percentile
    - weight is more than the 97.5th percentile
12. Calculate the correlation matrix and store it in the `corr` variable.
13. Generate a mask for the upper triangle and store it in the `mask` variable.
14. Set up the `matplotlib` figure.
15. Plot the correlation matrix using the method provided by the `seaborn` library import: `sns.heatmap()`.
16. Do not modify the next two lines.

## Desenvolvimento

Write your code in `medical_data_visualizer.py`. Para o desenvolvimento, você pode usar `main.py` para testar o seu código.

## Testes

Os testes unitários para esse projeto estão em `test_module.py`. Importamos os testes de `test_module.py` em `main.py` para a sua conveniência.

## Envio

Copie o URL do seu projeto e envie-o para o freeCodeCamp.

# --hints--

Ele deve passar em todos os testes do Python.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
