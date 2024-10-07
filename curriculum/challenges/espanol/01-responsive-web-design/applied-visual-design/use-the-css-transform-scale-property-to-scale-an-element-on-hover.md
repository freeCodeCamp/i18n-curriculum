---
id: 587d78a5367417b2b2512ada
title: Utiliza la propiedad de escala de transformación CSS para escalar un elemento al desplazarse
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLPJuM'
forumTopicId: 301077
dashedName: use-the-css-transform-scale-property-to-scale-an-element-on-hover
---

# --description--

The `transform` property has a variety of functions that let you scale, move, rotate, skew, etc., your elements. When used with pseudo-classes such as `:hover` that specify a certain state of an element, the `transform` property can easily add interactivity to your elements.

Aquí hay un ejemplo para escalar los elementos de párrafo a 2.1 veces su tamaño original:

```css
p:hover {
  transform: scale(2.1);
}
```

**Nota:** La aplicación de una transformación a un elemento `div` también afectará a cualquier elemento secundario contenido del div.

# --instructions--

Agrega una regla CSS para el estado `hover` del `div` y usa la propiedad `transform` para escalar el elemento `div` a 1.1 veces su tamaño original cuando un usuario pasa sobre él.

# --hints--

El tamaño del elemento `div` debe escalar 1.1 veces cuando el usuario pase el cursor sobre él.

```js
assert.match(code, /div:hover\s*?{\s*?transform:\s*?scale\(1\.1\);/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }



</style>

<div></div>
```

# --solutions--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }
  div:hover {
    transform: scale(1.1);
  }
</style>
<div></div>
```
