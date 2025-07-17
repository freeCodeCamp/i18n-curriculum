---
id: 5e46f8e3ac417301a38fb92f
title: Motor de Recomendación de Libros Usando KNN
challengeType: 10
forumTopicId: 462378
dashedName: book-recommendation-engine-using-knn
---

# --description--

You will be <a href="https://colab.research.google.com/github/freeCodeCamp/boilerplate-book-recommendation-engine/blob/master/fcc_book_recommendation_knn.ipynb" target="_blank" rel="noopener noreferrer nofollow">working on this project with Google Colaboratory</a>.

Después de acceder al enlace, crea una copia del cuaderno ya sea en tu propia cuenta o de manera local. Una vez hayas completado el proyecto y superes el test (incluido en el enlace), envía el enlace del proyecto a continuación. Si envias un enlace a Google Colaboratory, asegúrate de que activas el uso compartido para "cualquiera con el enlace."

Todavía estamos desarrollando el contenido instructivo interactivo para el plan de estudios de aprendizaje automático. Por ahora, puedes pasar por los desafíos en video de esta certificación. También puede que tengas que buscar recursos de aprendizaje adicionales, similares a lo que harías cuando trabajas en un proyecto del mundo real.

# --instructions--

En este desafío, crearás un algoritmo de recomendación de libros utilizando **K-Nearest Neighbors.**.

In this project, you will use the Book-Crossings dataset, which contains 1.1 million ratings (scale of 1-10) of 270,000 books by 90,000 users. The dataset is already imported in the notebook, so no additional download is required.

Use `NearestNeighbors` from `sklearn.neighbors` to develop a model that shows books that are similar to a given book. El algoritmo de Neighbors más cercano mide la distancia para determinar la “cercanía” de las instancias.

Crea una función llamada `get_recommends` que toma el título del libro (desde el conjunto de datos) como argumento y devuelve una lista de 5 libros similares con sus distancias del argumento del libro.

Este código:

```py
get_recommends("The Queen of the Damned (Vampire Chronicles (Paperback))")
```

debe retornar:

```py
[
  'The Queen of the Damned (Vampire Chronicles (Paperback))',
  [
    ['Catch 22', 0.793983519077301], 
    ['The Witching Hour (Lives of the Mayfair Witches)', 0.7448656558990479], 
    ['Interview with the Vampire', 0.7345068454742432],
    ['The Tale of the Body Thief (Vampire Chronicles (Paperback))', 0.5376338362693787],
    ['The Vampire Lestat (Vampire Chronicles, Book II)', 0.5178412199020386]
  ]
]
```

Tenga en cuenta que los datos devueltos desde `get_recommends()` es una lista. El primer elemento de la lista es el título del libro pasado a la función. El segundo elemento de la lista es una lista de cinco listas más. Cada una de las cinco listas contiene un libro recomendado y la distancia del libro recomendado al libro pasado a la función.

Si graficas conjunto de datos (opcional), notaras que la mayoria de los libros no se clafican con frecuencia. Para garantizar la importacia estadística, elimine del conjunto de datos a los usuarios con menos de 200 calificaciones y libros con menos de 100 calificaciones.

Las primeras tres celdas importan las bibliotecas que puede necesitar y los datos a utilizar. La celda final es para pruebas. Escribe todo tu código entre esas celdas.

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
