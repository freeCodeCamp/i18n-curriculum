---
id: 63ee354c0d8d4841c3a70921
videoId: LGQuIIv2RVA
title: Lección H de Fundamentos de CSS
challengeType: 15
dashedName: css-foundations-lesson-h
---

# --description--

El `CSS` en línea hace posible agregar estilos directamente a los elementos de `HTML`, aunque este método no es tan recomendado:

```html
<body>
  <div style="color: white; background-color: black;">...</div>
</body>
```

Lo primero a observar es que aquí no hay selectores, ya que los estilos se están agregando directamente a la etiqueta de apertura `<div>` en sí. A continuación, tienes el atributo `style`, con su valor dentro del par de comillas siendo las declaraciones.

Si necesitas agregar un estilo único para un solo elemento, este método puede funcionar bastante bien. Sin embargo, generalmente, esta no es exactamente una forma recomendada para agregar CSS a HTML por varias razones:

Puede volverse rápidamente bastante desordenado una vez que comienzas a agregar muchas declaraciones a un solo elemento, haciendo que tu archivo HTML se vuelva innecesariamente inflado. Si deseas que muchos elementos tengan el mismo estilo, tendrías que copiar + pegar el mismo estilo a cada elemento individual, causando mucha repetición innecesaria y más inflación. Cualquier CSS en línea sobrescribirá los otros dos métodos, lo que puede causar resultados inesperados. (Aunque no profundizarás en eso aquí, se puede aprovechar esta situación).

# --questions--

## --text--

¿Cuál de las siguientes es la principal desventaja de usar CSS en línea?

## --answers--

Puede volverse rápidamente bastante desordenado una vez que comienzas a agregar muchas declaraciones a un solo elemento, haciendo que tu archivo HTML se vuelva innecesariamente inflado.

---

Requiere usar selectores, lo cual puede ser complicado para principiantes.

---

Cualquier CSS en línea sobrescribirá los otros dos métodos (interno y externo), lo que puede causar resultados inesperados.


## --video-solution--

3
