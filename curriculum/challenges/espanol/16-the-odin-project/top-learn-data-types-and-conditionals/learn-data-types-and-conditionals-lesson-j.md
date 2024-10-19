---
id: 65e97288484dd50f720e6fef
title: Aprenda tipos de datos y condicionales lección J
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-j
---

# --description--

Declaraciones condicionales más complejas pueden incluir múltiples condiciones. Es por eso que se usan los operadores lógicos para combinar múltiples condiciones. Los operadores lógicos son `&&`, `||` y `!` que se utilizan para representar `y`, `o` y `no` respectivamente.

El operador lógico `||` se utiliza para combinar dos condiciones booleanas. Devuelve `true` si al menos una de las condiciones es `true`. De lo contrario, devuelve `false`:

```javascript
let a = 5;
let b = 10;
let c = 15;

if (a > b || a > c) {
  console.log("At least one of the conditions is true");
} else {
  console.log("Both of the conditions are false");
}
```

El operador lógico `&&` se utiliza para combinar dos condiciones booleanas. Devuelve `true` solo si ambas condiciones son `true`. De lo contrario, devuelve `false`:

```javascript
let a = 5;
let b = 10;
let c = 15;

if (a < b && a < c) {
  console.log("Both of the conditions are true");
} else {
  console.log("At least one of the conditions is false");
}
```

El operador lógico `!` se utiliza para negar una condición booleana. Devuelve `true` si la condición es `false`. De lo contrario, devuelve `false`:

```javascript
let a = 5;
let b = 10;

if (!(a > b)) {
  console.log("The condition is false");
} else {
  console.log("The condition is true");
}
```

En el ejemplo anterior, el par adicional de paréntesis se utiliza para hacer el código más legible. No es necesario usarlos.

# --questions--

## --text--

Se te encarga escribir una sentencia `if` que verifica las siguientes condiciones en una aplicación web para mostrar `Welcome!` al usuario:

1. El usuario debe tener una cuenta premium (`isPremium`) o haber sido miembro por más de un año (`membershipDuration` > 12 meses).

1. El usuario no debe estar actualmente bloqueado del servicio (`!isBlocked`).

¿Qué sentencia if verifica correctamente estas condiciones?

## --answers--

```javascript
if (isPremium && membershipDuration > 12 && !isBlocked) {
  console.log("Welcome!");
}
```

---

```javascript
if (isPremium || (membershipDuration > 12 && !isBlocked)) {
  console.log("Welcome!");
}
```

---

```javascript
if ((isPremium || membershipDuration > 12) && !isBlocked) {
  console.log("Welcome!");
}
```

---

```javascript
if (!isPremium || membershipDuration <= 12 || isBlocked) {
  console.log("Welcome!");
}
```

## --video-solution--

3
