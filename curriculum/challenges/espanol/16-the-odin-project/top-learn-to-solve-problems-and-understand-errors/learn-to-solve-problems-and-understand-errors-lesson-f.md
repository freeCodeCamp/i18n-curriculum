---
id: 66581a7db1eb2281159492ff
title: Aprende a resolver problemas y comprender errores Lección F
challengeType: 15
dashedName: learn-to-solve-problems-and-understand-errors-lesson-f
---

# --description--

Otra parte importante de un error es el seguimiento de la pila. Esto te ayuda a entender cuándo se lanzó el error en tu aplicación, y qué funciones se llamaron que condujeron al error. Por ejemplo, si tienes el siguiente código:

```javascript
const a = 5;
const b = 10;

function add() {
  return c;
}

function print() {
  add();
}

print();
```

Nuestra función `print()` debe llamar a `add()`, que devuelve una variable llamada `c`, que actualmente no ha sido declarada. El error correspondiente es el siguiente:

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/284f0cdc998be7e4751e29e8458323ad5d320303/foundations/javascript_basics/understanding_errors/imgs/01.png" width="100%" alt="Un error mostrando un seguimiento de la pila en la consola de desarrolladores" />

El seguimiento de la pila nos dice que:

1. `c is not defined` en el ámbito de `add()`, que se declara en la línea 5.
1. `add()` fue llamada por `print()`, que fue declarado en la línea 9.
1. `print()` se llamó en la línea 12.

Así, el seguimiento de pila te permite rastrear la evolución de un error hasta su origen, que aquí es la declaración de `add()`.

# --preguntas----preguntas--

## --text--

¿Cómo ayuda el seguimiento de pila para depurar el error en el código de JavaScript proporcionado?

## --answers--

El seguimiento de pila muestra que la función `add()` devuelve correctamente el valor de `c`.

---

El seguimiento de pila indica qué línea en el código necesita ser editada para corregir un error de sintaxis.

---

El seguimiento de pila proporciona una ruta detallada de las funciones llamadas que llevan al error, ayudando a identificar donde `c` está referenciado incorrectamente.

---

El seguimiento de pila solo indica que `print()` fue llamado, pero no proporciona detalles sobre el error en `add()`.

## --video-solution--

3
