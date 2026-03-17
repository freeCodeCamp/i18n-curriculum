---
id: bd7123c9c443eddfaeb5bdef
title: Dichiarare variabili in JavaScript
challengeType: 1
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

In informatica, i <dfn>dati</dfn> sono qualsiasi cosa abbia un significato per il computer. JavaScript fornisce otto diversi <dfn>tipi di dati</dfn> che sono `undefined`, `null`, `boolean`, `string`, `symbol`, `bigint`, `number` e `object`.

Per esempio, i computer distinguono tra numeri, come il numero `12`, e `strings`, come `"12"`, `"dog"` o `"123 cats"`, che sono raccolte di caratteri. I computer possono eseguire operazioni matematiche su un numero, ma non su una stringa.

Le <dfn>variabili</dfn> permettono ai computer di archiviare e manipolare dati in modo dinamico. Lo fanno usando un "etichetta" per puntare ai dati invece di usare i dati stessi. Qualsiasi degli otto tipi di dati può essere archiviato in una variabile.

Le variabili sono simili alle variabili x e y che usi in matematica, il che significa che sono un nome semplice per rappresentare i dati a cui vogliamo fare riferimento. Le variabili informatiche differiscono da quelle matematiche perché possono archiviare valori diversi in momenti diversi.

Diciamo a JavaScript di creare o <dfn>dichiarare</dfn> una variabile mettendo davanti la parola chiave `var`, così:

```js
var ourName;
```

crea una variabile chiamata `ourName`. In JavaScript terminiamo le istruzioni con il punto e virgola. I nomi delle variabili possono essere composti da numeri, lettere e `$` o `_`, ma non possono contenere spazi né iniziare con un numero.

# --instructions--

Usa la parola chiave `var` per creare una variabile chiamata `myName`.

**Suggerimento**  
Guarda l'esempio `ourName` sopra se ti blocchi.

# --hints--

Dovresti dichiarare `myName` con la parola chiave `var`, terminando con un punto e virgola

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
