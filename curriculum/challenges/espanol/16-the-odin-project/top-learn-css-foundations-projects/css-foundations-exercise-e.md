---
id: 63ee3ff8381756f9716727f3
title: Ejercicio E de fundamentos de CSS
challengeType: 14
dashedName: css-foundations-exercise-e
---

# --description--

Entender cómo funcionan los combinadores puede volverse mucho más fácil cuando comienzas a experimentar con ellos y ves qué exactamente se ve afectado por ellos versus qué no lo está.

El objetivo de este ejercicio es aplicar estilos a elementos que son descendientes de otro elemento, mientras dejas sin estilo a elementos que no son descendientes de ese elemento.

1. Debe ver un fondo `yellow` para los elementos `p` que son descendientes del elemento `div`.
1. Debe ver un color de texto `red` para los elementos que son descendientes del elemento `div`.
1. Debe ver un tamaño de fuente de `20px` para elementos que son descendientes del elemento `div`.
1. Debe alinear al centro el texto para elementos que son descendientes del elemento `div`.

# --hints--

Debe tener un color de fondo `yellow` en sus descendientes.

```js
const styleOne = new __helpers.CSSHelp(document).getStyle('.container .text');
const styleTwo =  new __helpers.CSSHelp(document).getStyle('div p');
const styleThree =  new __helpers.CSSHelp(document).getStyle('div .text');
const styleFour =  new __helpers.CSSHelp(document).getStyle('.container p');

const styles = [styleOne, styleTwo, styleThree, styleFour];

function getCorrectStyle(){
    for(let i = 0; i < styles.length; i++){
        if(styles[i] != undefined){
            return styles[i];
        }
    }
}

assert(getCorrectStyle()?.backgroundColor === 'yellow');

```

Debe tener un color de texto `red` en sus descendientes.

```js
const styleOne = new __helpers.CSSHelp(document).getStyle('.container .text');
const styleTwo =  new __helpers.CSSHelp(document).getStyle('div p');
const styleThree =  new __helpers.CSSHelp(document).getStyle('div .text');
const styleFour =  new __helpers.CSSHelp(document).getStyle('.container p');

const styles = [styleOne, styleTwo, styleThree, styleFour];

function getCorrectStyle(){
    for(let i = 0; i < styles.length; i++){
        if(styles[i] != undefined){
            return styles[i];
        }
    }
}

assert(getCorrectStyle()?.color === 'red');

```

Debe tener un tamaño de fuente de `20px` en sus descendientes.

```js
const styleOne = new __helpers.CSSHelp(document).getStyle('.container .text');
const styleTwo =  new __helpers.CSSHelp(document).getStyle('div p');
const styleThree =  new __helpers.CSSHelp(document).getStyle('div .text');
const styleFour =  new __helpers.CSSHelp(document).getStyle('.container p');

const styles = [styleOne, styleTwo, styleThree, styleFour];

function getCorrectStyle(){
    for(let i = 0; i < styles.length; i++){
        if(styles[i] != undefined){
            return styles[i];
        }
    }
}

assert(getCorrectStyle()?.fontSize === '20px');

```

Debe alinear al centro el texto en sus descendientes.

```js
const styleOne = new __helpers.CSSHelp(document).getStyle('.container .text');
const styleTwo =  new __helpers.CSSHelp(document).getStyle('div p');
const styleThree =  new __helpers.CSSHelp(document).getStyle('div .text');
const styleFour =  new __helpers.CSSHelp(document).getStyle('.container p');

const styles = [styleOne, styleTwo, styleThree, styleFour];

function getCorrectStyle(){
    for(let i = 0; i < styles.length; i++){
        if(styles[i] != undefined){
            return styles[i];
        }
    }
}

assert(getCorrectStyle()?.textAlign === 'center');

```

# --seed--

## --seed-contents--
```css
```

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Descendant Combinator</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <div class="container">
      <p class="text">This should be styled.</p>
    </div>
    <p class="text">This should be unstyled.</p>
    <p class="text">This should be unstyled.</p>
    <div class="container">
      <p class="text">This should be styled.</p>
      <p class="text">This should be styled.</p>
    </div>
  </body>
</html>
```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Descendant Combinator</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <div class="container">
      <p class="text">This should be styled.</p>
    </div>
    <p class="text">This should be unstyled.</p>
    <p class="text">This should be unstyled.</p>
    <div class="container">
      <p class="text">This should be styled.</p>
      <p class="text">This should be styled.</p>
    </div>
  </body>
</html>
```

```css
.container .text {
  background-color: yellow;
  color: red;
  font-size: 20px;
  text-align: center;
}
```
