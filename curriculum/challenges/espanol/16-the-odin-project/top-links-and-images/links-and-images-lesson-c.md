---
id: 637f703072c65bc8e73dfe34
title: Links and Images Lesson C
challengeType: 15
dashedName: links-and-images-lesson-c
---

# --description--

To get some practice using links and images throughout this lesson you need an HTML project to work with.

- Create a new directory named `odin-links-and-images`.

- Within that directory, create a new file named `index.html`.

- Fill in the usual HTML boilerplate.

- Finally, add the following `h1` to the `body`: `<h1>Homepage</h1>`

## Anchor Elements
To create a link in HTML, you use the anchor element. An anchor element is defined by wrapping the text or another HTML element you want to be a link with an `<a>` tag.

Add the following to the `body` of the `index.html` page you created and open it in the browser:

```html
<a>click me</a>
```

You may have noticed that clicking this link doesn’t do anything. Esto se debe a que una etiqueta de ancla por sí sola no sabrá a dónde quieres enlazar. Debes indicarle un destino al que dirigirse. Esto se hace utilizando un atributo HTML.

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
