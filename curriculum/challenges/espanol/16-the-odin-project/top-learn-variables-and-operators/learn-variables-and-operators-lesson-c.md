---
id: 65e1957a500d930ce8ed90a6
title: Aprende variables y Operadores lección C
challengeType: 15
dashedName: learn-variables-and-operators-lesson-c
---

# --description--

Para declarar una variable constante (invariable), usa `const` en lugar de `let`:

```javascript
const myBirthday = '16-09-2003';
```

Las variables declaradas usando `const` se llaman "constantes". No pueden ser reasignadas. Un intento de hacerlo causaría un error:

```javascript
const myBirthday = '16-09-2003';

myBirthday = '01-01-2001'; // error, can't reassign the constant!
```

Cuando un programador está seguro de que una variable nunca cambiará, puede declararla con `const` para garantizar y comunicar ese hecho a todos.

# --questions--

## --text--

¿Cuál es el resultado de intentar reasignar una variable declarada con `const` en JavaScript?

## --answers--

La reasignación tiene éxito sin errores.

---

Se lanza un error porque las variables declaradas con `const` no pueden ser reasignadas.

---

JavaScript ignora silenciosamente la reasignación.

---

El tipo de variable se cambia automáticamente a `let`.


## --video-solution--

2
