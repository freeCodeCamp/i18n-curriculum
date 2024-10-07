---
id: 56533eb9ac21ba0edf2244b8
title: Concatenare le stringhe con l'operatore +=
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmmC4'
forumTopicId: 16803
dashedName: concatenating-strings-with-the-plus-equals-operator
---

# --description--

We can also use the `+=` operator to <dfn>concatenate</dfn> a string onto the end of an existing string variable. This can be very helpful to break a long string over several lines.

**Nota:** Attenzione agli spazi. La concatenazione non aggiunge spazi tra le stringhe concatenate, quindi dovrai aggiungerli da solo.

Esempio:

```js
let ourStr = "I come first. ";
ourStr += "I come second.";
```

`ourStr` ora ha un valore stringa `I come first. I come second.`.

# --instructions--

Costruisci `myStr` su diverse righe concatenando queste due stringhe: `This is the first sentence.` e `This is the second sentence.` usando l'operatore `+=`. Usa l'operatore `+=` in modo simile a quello mostrato nell'esempio e assicurati di includere uno spazio tra le due stringhe. Inizia assegnando la prima stringa a `myStr`, quindi aggiungi la seconda.

# --hints--

`myStr` dovrebbe avere un singolo spazio tra le due stringhe.

```js
assert(/sentence\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the first sentence. This is the second sentence.`

```js
assert(myStr === 'This is the first sentence. This is the second sentence.');
```

Dovresti usare l'operatore `+=` per costruire `myStr`.

```js
assert(__helpers.removeJSComments(code).match(/myStr\s*\+=\s*(["']).*\1/g));
```

# --seed--

## --after-user-code--

```js
(function(){
  if(typeof myStr === 'string') {
    return 'myStr = "' + myStr + '"';
  } else {
    return 'myStr is not a string';
  }
})();
```

## --seed-contents--

```js
let myStr;
```

# --solutions--

```js
let myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";
```
