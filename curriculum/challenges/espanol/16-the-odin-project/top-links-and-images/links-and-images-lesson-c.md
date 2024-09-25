---
id: 637f703072c65bc8e73dfe34
title: Enlaces e imágenes lección C
challengeType: 15
dashedName: links-and-images-lesson-c
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

Puede que hayas notado que hacer clic en este enlace no hace nada. Esto se debe a que una etiqueta de ancla por sí sola no sabrá a dónde quieres enlazar. Debes indicarle un destino al que dirigirse. Esto se hace utilizando un atributo HTML.

Un atributo HTML brinda información adicional a un elemento HTML y siempre va en la etiqueta de apertura del elemento. Un atributo suele estar compuesto por dos partes: un nombre y un valor; sin embargo, no todos los atributos requieren un valor. En tu caso, necesitas agregar un atributo `href` (referencia de enlace) a la etiqueta de apertura del ancla. El valor del atributo `href` es el destino al que deseas que tu enlace vaya.

Agrega el siguiente atributo `href` al elemento de ancla que creaste anteriormente y vuelve a intentar hacer clic, no olvides refrescar el navegador para que se apliquen los nuevos cambios.

```html
<a href="https://www.theodinproject.com/about">click me</a>
```

Por defecto, cualquier texto envuelto con una etiqueta de ancla sin un atributo `href` se verá como texto plano. Si el atributo `href` está presente, el navegador dará al texto un color azul y lo subrayará para indicar que es un enlace.

Cabe destacar que puedes usar etiquetas de ancla para enlazar a cualquier tipo de recurso en internet, no solo a otros documentos HTML. Puedes enlazar a videos, archivos pdf, imágenes, etc., pero en su mayoría, estarás enlazando a otros documentos HTML.

# --questions--

## --text--

¿Qué atributo indica a los enlaces a dónde deben ir?

## --answers--

`src`

---

`href`

---

`link`

## --video-solution--

2
