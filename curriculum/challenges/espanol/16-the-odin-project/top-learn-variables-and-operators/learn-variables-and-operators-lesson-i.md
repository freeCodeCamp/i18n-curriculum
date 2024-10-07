---
id: 65e1b46e500d930ce8ed90ad
title: Aprende variables y operadores lección I
challengeType: 15
dashedName: learn-variables-and-operators-lesson-i
---

# --description--

Aumentar o disminuir un número por uno es una de las operaciones numéricas más comunes.

Así que, hay operadores especiales para ello:

- Incremento `++` aumenta un contador por 1:

```js
let counter = 2;

// works the same as counter = counter + 1, but is shorter
counter++;      

console.log(counter); // 3
```

- Decremento `--` disminuye un contador por 1:

```js
let counter = 2;

// works the same as counter = counter - 1, but is shorter
counter--;

console.log(counter); // 1
```

Los operadores `++` y `--` se pueden colocar tanto antes como después de un contador.

- Cuando el operador va después de la variable, es en "formulario postfijo": `counter++`.

- El "formulario prefijo" es cuando el operador va antes de la variable: `++counter`.

Ambas sentencias hacen lo mismo: incrementar `counter` en `1`.

¿Existe alguna diferencia? Sí, pero sólo la puedes ver si usas el valor devuelto de `++/--`.

Aclarémoslo. Como sabes, todos los operadores devuelven un valor. El incremento/decremento no es una excepción. La formulario de prefijo devuelve el nuevo valor mientras que la formulario posfijo devuelve el valor antiguo (antes del incremento/decremento).

Para ver la diferencia, aquí hay un ejemplo:

```js
let counter = 1;
let a = ++counter; // (*)

console.log(a); // 2
```

Para resumir:

- Si el resultado del incremento/decremento no se usa, no hay diferencia en qué formulario usar:

```js
let counter = 0;
counter++;
++counter;

console.log( counter ); // 2, the lines above did the same
```

- Si quieres aumentar un valor e inmediatamente usar el resultado del operador, necesitas la formulario de prefijo:

```js
let counter = 0;
console.log( ++counter ); // 1
```

- Si quieres incrementar un valor pero usar su valor anterior, necesitas la formulario posfijo:

```js 
let counter = 0;
console.log( counter++ ); // 0
```

# --preguntas----preguntas--

## --text--

What are the outputs of the two `console.log` statements in the JavaScript code below?

```js
let counter = 1;
console.log(2 * ++counter); // Statement A
```

```js
let counter = 1;
console.log(2 * counter++); // Statement B
```

## --answers--

There is no difference; both `console.log` statements will show the same result.

---

La sentencia A registrará `4` porque `++counter` incrementa el valor antes de la multiplicación. La sentencia B registrará `2` porque `counter++` incrementa el valor después de la multiplicación.

---

La sentencia A registrará `2` porque `++counter` es un error de sintaxis. La sentencia B registrará `4` porque `counter++` es la forma correcta de incrementar un contador.

---

Ambas sentencias registrarán `3` porque el contador se incrementa en ambos casos antes del `console.log`.


## --video-solution--

2
