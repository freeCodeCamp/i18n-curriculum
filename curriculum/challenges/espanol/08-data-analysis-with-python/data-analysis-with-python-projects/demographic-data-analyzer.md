---
id: 5e46f7e5ac417301a38fb929
title: Analizador de Datos Demográficos
challengeType: 10
forumTopicId: 462367
dashedName: demographic-data-analyzer
---

# --description--

Estarás <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-demographic-data-analyzer/" target="_blank" rel="noopener noreferrer nofollow">trabajando en este proyecto con nuestro código inicial en Gitpod</a>.

Estamos desarrollando las instrucciones interactivas del currículo de Python. Aunque puedes encontrar los siguientes videos en el canal de YouTube de freeCodeCamp.org que te enseñaran lo necesario para realizar este proyecto:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">How to Analyze Data with Python Pandas</a> (10 hours)

# --instructions--

En este desafío debe analizar los datos demográficos usando Pandas. Se le da un conjunto de datos demográficos que fueron extraidos de la base de datos del censo de 1994. Aquí hay un ejemplo de cómo se debería ver:

```markdown
|    |   age | workclass        |   fnlwgt | education   |   education-num | marital-status     | occupation        | relationship   | race   | sex    |   capital-gain |   capital-loss |   hours-per-week | native-country   | salary   |
|---:|------:|:-----------------|---------:|:------------|----------------:|:-------------------|:------------------|:---------------|:-------|:-------|---------------:|---------------:|-----------------:|:-----------------|:---------|
|  0 |    39 | State-gov        |    77516 | Bachelors   |              13 | Never-married      | Adm-clerical      | Not-in-family  | White  | Male   |           2174 |              0 |               40 | United-States    | <=50K    |
|  1 |    50 | Self-emp-not-inc |    83311 | Bachelors   |              13 | Married-civ-spouse | Exec-managerial   | Husband        | White  | Male   |              0 |              0 |               13 | United-States    | <=50K    |
|  2 |    38 | Private          |   215646 | HS-grad     |               9 | Divorced           | Handlers-cleaners | Not-in-family  | White  | Male   |              0 |              0 |               40 | United-States    | <=50K    |
|  3 |    53 | Private          |   234721 | 11th        |               7 | Married-civ-spouse | Handlers-cleaners | Husband        | Black  | Male   |              0 |              0 |               40 | United-States    | <=50K    |
|  4 |    28 | Private          |   338409 | Bachelors   |              13 | Married-civ-spouse | Prof-specialty    | Wife           | Black  | Female |              0 |              0 |               40 | Cuba             | <=50K    |
```

Debes usar Pandas para responder a las siguientes preguntas:

- ¿Cuántas personas de cada raza están representadas en este set de datos? Debe ser una serie Pandas con los nombres de raza como índice. (`race` column)
- ¿Cuál es la edad promedio de los hombres?
- ¿Cuál es el porcentaje de personas que tienen un grado de licenciatura?
- ¿Que porcentaje de personas con una educación avanzada (`Bachelors`, `Masters` o `Doctorate`) generan mas de 50k?
- ¿Que porcentaje de personas sin una educación avanzada generan mas de 50k?
- ¿Cuál es el mínimo número de horas que una persona trabaja por semana?
- ¿Qué porcentaje de personas que trabajan el minimo de horas por semana tienen un salario de mas de 50k?
- ¿Qué país tiene el mas alto porcentaje de personjas que ganan >50k y cual es ese porcentaje?
- Identifica la ocupacion mas popular de aquellos que ganan >50k en India.

Use the starter code in the file `demographic_data_analyzer.py`. Update the code so all variables set to `None` are set to the appropriate calculation or code. Redondea todos los decimales a la décima más cercana.

## Dessarrollo

Write your code in `demographic_data_analyzer.py`. Para el desarrollo, puedes utilizar `main.py` para probar tu código.

## Pruebas

Las pruebas unitarias para este proyecto están en `test_module.py`. Por defecto las pruebas del archivo `test_module.py` ya están importadas en el archivo `main.py` para su comodidad.

## Enviar

Copia la URL de tu proyecto y envíalo a freeCodeCamp.

## Fuente de datos

Dua, D. y Graff, C. (2019). <a href="http://archive.ics.uci.edu/ml" target="_blank" rel="noopener noreferrer nofollow">UCI Machine Learning Repository</a>. Irvine, CA: University of California, School of Information and Computer Science.

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
