---
id: 6489c96782cf2e4f86f03ae2
title: La Cascada de CSS Lección B
challengeType: 15
dashedName: the-cascade-of-css-lesson-b
---

# --description--

Una declaración de CSS que es más específica tendrá prioridad sobre las menos específicas. Los estilos en línea, que revisaste en una lección anterior, tienen la mayor especificidad en comparación con los selectores, mientras que cada tipo de selector tiene su propio nivel de especificidad que contribuye a qué tan específica es una declaración. Otros selectores contribuyen a la especificidad, pero te estás enfocando solo en los que has visto hasta ahora:

1. Selectores de ID (selector más específico)
2. Selectores de clase
3. Selectores de tipo

La especificidad solo se tendrá en cuenta cuando un elemento tiene múltiples declaraciones en conflicto dirigidas a él, como un desempate. Un selector de ID siempre superará cualquier número de selectores de clase, un selector de clase siempre superará cualquier número de selectores de tipo, y un selector de tipo siempre superará cualquier número de algo menos específico que él. Cuando ninguna declaración tiene un selector con una mayor especificidad, una cantidad mayor de un solo selector superará a una cantidad menor de ese mismo selector.

# --preguntas----preguntas--

## --text--

¿Cuál de los siguientes es el orden correcto de especificidad para los selectores CSS, del más específico al menos específico?

## --answers--

Selectores de tipo, selectores de clase, selectores de ID

---

Selectores de ID, selectores de clase, selectores de tipo

---

Selectores de clase, selectores de tipo, selectores de ID

---

Selectores de ID, selectores de tipo, selectores de clase

## --video-solution--

2
