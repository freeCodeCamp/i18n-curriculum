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
By each number in the `medical_data_visualizer.py` file, add the code from the associated instruction number below.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable
2. Crie a coluna `overweight` na variável `df`
3. Normalize os dados, tornando `0` sempre bom e `1` sempre ruim. Se o valor de `cholesterol` ou de `gluc` for 1, defina o valor como `0`. Se o valor for maior que `1`, defina o valor como `1`.
4. Desenhe o gráfico categórico na função `draw_cat_plot`
5. Crie um DataFrame para o gráfico de categorias usando `pd.melt` com valores de `cholesterol`, `gluc`, `smoke`, `alco`, `active` e `overweight` na variável `df_cat`.
6. Agrupe e reformate os dados em `df_cat` para dividi-los por `cardio`. Mostre as contagens de cada recurso. Você terá que renomear uma das colunas para que o `catplot` funcione corretamente.
7. Converta os dados para um formato `long` e crie um gráfico que mostre os valores dos recursos categóricos, usando o seguinte método fornecido pela importação de biblioteca seaborn: `sns.catplot()`
8. Obtenha o valor para a saída e armazene-o na variável `fig`
9. Não modifique as próximas duas linhas
10. Desenhe o mapa de calor na função `draw_heat_map`
11. Limpe os dados na variável `df_heat` filtrando os seguintes segmentos de pacientes que representam dados incorretos:
    - diastolic pressure is higher than systolic (Keep the correct data with `(df['ap_lo'] <= df['ap_hi'])`)
    - height is less than the 2.5th percentile (Keep the correct data with `(df['height'] >= df['height'].quantile(0.025))`)
    - height is more than the 97.5th percentile
    - weight is less than the 2.5th percentile
    - weight is more than the 97.5th percentile
12. Calcule a matriz de correlação e armazene-a na variável `corr`
13. Gere uma máscara para o triângulo superior e armazene-a na variável `mask`
14. Configure o valor de `matplotlib`
15. Faça o gráfico da matriz de correlação usando o método fornecido pela biblioteca `seaborn` importando: `sns.heatmap()`
16. Não modifique as próximas duas linhas

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
