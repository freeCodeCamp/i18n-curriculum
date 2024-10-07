---
id: 637f703572c65bc8e73dfe35
title: Lección B de enlaces e imágenes
challengeType: 15
dashedName: links-and-images-lesson-b
---

# --description--

Para practicar el uso de enlaces e imágenes a lo largo de esta lección, necesitas un proyecto HTML con el cual trabajar.

- Crea un nuevo directorio llamado `odin-links-and-images`.

- Dentro de ese directorio, crea un nuevo archivo llamado `index.html`.

- Completa el boilerplate HTML habitual.

- Finalmente, agrega el siguiente `h1` al `body`: `<h1>Homepage</h1>`

## Elementos de ancla
Para crear un enlace en HTML, usas el elemento de ancla. Un elemento de ancla se define envolviendo el texto u otro elemento HTML que deseas que sea un enlace con una etiqueta `<a>`.

Agrega lo siguiente al `body` de la página `index.html` que creaste y ábrela en el navegador:

```html
<a>click me</a>
```

Puede que hayas notado que hacer clic en este enlace no hace nada. Esto se debe a que una etiqueta de ancla por sí sola no sabrá a dónde deseas enlazar. Tienes que indicarle un destino al cual ir. Haces esto utilizando un atributo de HTML.

Un atributo de HTML otorga información adicional a un elemento HTML y siempre va en la etiqueta de apertura del elemento. Un atributo generalmente consta de dos partes: un nombre y un valor; sin embargo, no todos los atributos requieren un valor. En tu caso, debes agregar un atributo `href` (referencia de hipervínculo) a la etiqueta de apertura del ancla. El valor del atributo `href` es el destino al que deseas que vaya tu enlace.

Agrega el siguiente atributo `href` al elemento ancla que creaste previamente e intenta hacer clic en él nuevamente, no olvides actualizar el navegador para que se apliquen los nuevos cambios.

```html
<a href="https://www.theodinproject.com/about">click me</a>
```

Por defecto, cualquier texto envuelto con una etiqueta de ancla sin un atributo `href` parecerá texto simple. Si el atributo `href` está presente, el navegador dará al texto un color azul y lo subrayará para indicar que es un enlace.

Es importante observar que puedes utilizar etiquetas de ancla para enlazar a cualquier tipo de recurso en internet, no solo otros documentos HTML. Puedes enlazar a videos, archivos pdf, imágenes, etc., pero en su mayoría estarás enlazando a otros documentos HTML.

# --preguntas----preguntas--
## --text--

¿Qué es un atributo?
## --answers--

Un atributo de HTML proporciona información adicional a un elemento HTML y siempre va en la etiqueta de cierre del elemento.

---

Un atributo de HTML se utiliza para informar al navegador sobre el contenido del elemento.

---

Un atributo de HTML proporciona información adicional a un elemento HTML y siempre va en la etiqueta de apertura del elemento.


## --video-solution--

3
