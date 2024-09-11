---
id: 65e97288484dd50f720e6fef
title: Lição J de Aprenda tipos de dados e condicionais
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-j
---

# --description--

Instruções condicionais mais complexas podem incluir múltiplas condições. É por isso que operadores lógicos são usados para combinar múltiplas condições. Os operadores lógicos são `&&`, `||` e `!` que são usados para representar `and`, `or` e `not`, respectivamente.

O operador lógico `||` é usado para combinar duas condições booleanas. Ele retorna `true` se pelo menos uma das condições for `true`. Caso contrário, retorna `false`:

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

O operador lógico `&&` é usado para combinar duas condições booleanas. Ele retorna `true` somente se as duas condições forem `true`. Caso contrário, retorna `false`:

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

O operador lógico `!` é usado para negar uma condição booleana. Ele retorna `true` se a condição for `false`. Caso contrário, retorna `false`:

```javascript
let a = 5;
let b = 10;

if (!(a > b)) {
  console.log("The condition is false");
} else {
  console.log("The condition is true");
}
```

No exemplo acima, o par adicional de parênteses é usado para tornar o código mais legível. Não é necessário usá-los.

# --question--

## --text--

Escreva uma instrução `if` que verifica as seguintes condições em uma aplicação para a web exibir `Welcome!` ao usuário:

1. O usuário deve ter uma conta premium (`isPremium`) ou ser um membro há mais de um ano (`membershipDuration` > 12 meses).

1. O usuário não deve estar atualmente bloqueado do serviço (`!isBlocked`).

Qual instrução if verifica corretamente essas condições?

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
