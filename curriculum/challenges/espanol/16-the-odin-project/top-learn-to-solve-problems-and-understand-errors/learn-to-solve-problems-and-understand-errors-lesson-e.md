---
id: 66581a7cb1eb2281159492fe
title: Aprende a resolver problemas y comprender errores Lección E
challengeType: 15
dashedName: learn-to-solve-problems-and-understand-errors-lesson-e
---

# --description--

Supongamos que has escrito el siguiente código:

```javascript
const a = "Hello";
const b = "World";

console.log(c);
```

Este código se ejecutará, pero generará un error. En términos técnicos, esto se llama <dfn>lanzar</dfn> un error. La primera parte de un error muestra el tipo de error. Esto proporciona la primera pista sobre con qué estás lidiando. Aprenderás más sobre los diferentes tipos de error más tarde en la lección. En este ejemplo, tienes un `ReferenceError`.

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/175b5ef2a1b4758a7b75f4ef43d7e27203e5707b/foundations/javascript_basics/understanding_errors/imgs/00.png" width="100%" alt="Un error mostrado en la consola del desarrollador" />

Se lanza un `ReferenceError` cuando se refiere a una variable que no está declarada y/o inicializada dentro del ámbito actual. En nuestro caso, el mensaje de error explica que el error ha ocurrido porque `c is not defined`.

Diferentes errores de este tipo tienen diferentes mensajes dependiendo de lo que esté causando el `ReferenceError`. Por ejemplo, otro mensaje con el que te puedes encontrar es `ReferenceError: can't access lexical declaration 'X' before initialization`.

La siguiente parte de un error nos da el nombre del archivo en el que puedes encontrar el error (en este caso, nuestro `script.js`), y también el número de línea.

Esto te permite navegar fácilmente a la línea problemática en tu código. Aquí, el error se origina en la cuarta línea de `script.js`, que se muestra como un enlace debajo del mensaje de error con el texto en `script.js:4`. Si haces clic en este enlace, la mayoría de los navegadores navegarán a la línea exacta del código y el resto de tu script en la pestaña Fuentes de las Herramientas de Desarrollador.

A veces, la consola de tu navegador también mostrará la columna (o carácter) en la línea donde está ocurriendo el error. En nuestro ejemplo, esto estaría en `script.js:4:13`.

# --questions--

## --text--

¿Qué indica el `ReferenceError` en el código JavaScript proporcionado?

## --answers--

La variable utilizada ha sido declarada pero se ha usado incorrectamente en su tipo.

---

La variable llamada en el código no ha sido declarada dentro del ámbito actual.

---

El código tiene un problema de sintaxis que impide que se analice correctamente.

---

La variable utilizada ha sido declarada pero no inicializada dentro del ámbito actual.


## --video-solution--

2
