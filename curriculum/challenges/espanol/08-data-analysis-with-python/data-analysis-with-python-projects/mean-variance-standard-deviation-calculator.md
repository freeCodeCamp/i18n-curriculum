---
id: 5e46f7e5ac417301a38fb928
title: Calculadora de varianza, desviación media, y estándar
challengeType: 10
forumTopicId: 462366
dashedName: mean-variance-standard-deviation-calculator
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mean-variance-standard-deviation-calculator/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Estamos desarrollando las instrucciones interactivas del currículo de Python. Aunque puedes encontrar los siguientes videos en el canal de YouTube de freeCodeCamp.org que te enseñaran lo necesario para realizar este proyecto:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Cómo analizar datos con Python Pandas</a> (10 horas)

# --instructions--

Crea una función llamada `calculate()` en `mean_var_std.py` que usa Numpy para producir la media, varianza, desviación estándar, max, min, y suma de las filas, columnas y elementos en una matriz de 3 x 3.

La entrada de la función debe ser una lista que contenga 9 dígitos. La función debe convertir la lista en una matriz numérica de 3 x 3, y luego devolver un diccionario que contenga la media, varianza, desviación estándar, max, min, y suma a lo largo de ambos ejes y para la matriz aplanada.

El diccionario retornado debería seguir este formato:

```py
{
  'mean': [axis1, axis2, flattened],
  'variance': [axis1, axis2, flattened],
  'standard deviation': [axis1, axis2, flattened],
  'max': [axis1, axis2, flattened],
  'min': [axis1, axis2, flattened],
  'sum': [axis1, axis2, flattened]
}
```

Si una lista que contiene menos de 9 elementos es pasada a la función, debería levantar una excepción de `ValueError` con el mensaje: "La lista debe contener nueve números". Los valores en el diccionario devuelto deben ser listas y no matrices Numpy.

Por ejemplo, `calculate([0,1,2,3,4,5,6,7,8])` debe regresar:

```py
{
  'mean': [[3.0, 4.0, 5.0], [1.0, 4.0, 7.0], 4.0],
  'variance': [[6.0, 6.0, 6.0], [0.6666666666666666, 0.6666666666666666, 0.6666666666666666], 6.666666666666667],
  'standard deviation': [[2.449489742783178, 2.449489742783178, 2.449489742783178], [0.816496580927726, 0.816496580927726, 0.816496580927726], 2.581988897471611],
  'max': [[6, 7, 8], [2, 5, 8], 8],
  'min': [[0, 1, 2], [0, 3, 6], 0],
  'sum': [[9, 12, 15], [3, 12, 21], 36]
}
```

## Development

Write your code in `mean_var_std.py`. For development, you can use `main.py` to test your code.

## Pruebas

Las pruebas unitarias para este proyecto están en `test_module.py`. Importamos las pruebas de `test_module.py` a `main.py` para tu comodidad.

## Enviar

Copia el URL de tu proyecto y envíalo a freeCodeCamp.

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
