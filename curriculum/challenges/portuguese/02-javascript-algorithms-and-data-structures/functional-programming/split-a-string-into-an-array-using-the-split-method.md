---
id: 587d7daa367417b2b2512b6b
title: Dividir uma string em um array usando o método split
challengeType: 1
forumTopicId: 18305
dashedName: split-a-string-into-an-array-using-the-split-method
---

# --description--

The `split` method splits a string into an array of strings. It takes an argument for the delimiter, which can be a character to use to break up the string or a regular expression. For example, if the delimiter is a space, you get an array of words, and if the delimiter is an empty string, you get an array of each character in the string.

Abaixo há dois exemplos de uso de split, um separando uma string por espaços, e outro por dígitos usando uma expressão regular:

```js
const str = "Hello World";
const bySpace = str.split(" ");

const otherString = "How9are7you2today";
const byDigits = otherString.split(/\d/);
```

`bySpace` terá o valor `["Hello", "World"]` e `byDigits` terá o valor `["How", "are", "you", "today"]`.

Como strings são imutáveis, o método `split` facilita o trabalho com elas.

# --instructions--

Use o método `split` na função `splitify` para dividir `str` em um array de palavras. A função deve retornar o array. Note que as palavras nem sempre são separadas por espaços; o array não deve conter nenhuma pontuação.

# --hints--

Você deve usar o método `split`.

```js
assert(__helpers.removeJSComments(code).match(/\.split/g));
```

`splitify("Hello World,I-am code")` deve retornar `["Hello", "World", "I", "am", "code"]`.

```js
assert(
  JSON.stringify(splitify('Hello World,I-am code')) ===
    JSON.stringify(['Hello', 'World', 'I', 'am', 'code'])
);
```

`splitify("Earth-is-our home")` deve retornar `["Earth", "is", "our", "home"]`.

```js
assert(
  JSON.stringify(splitify('Earth-is-our home')) ===
    JSON.stringify(['Earth', 'is', 'our', 'home'])
);
```

`splitify("This.is.a-sentence")` deve retornar `["This", "is", "a", "sentence"]`.

```js
assert(
  JSON.stringify(splitify('This.is.a-sentence')) ===
    JSON.stringify(['This', 'is', 'a', 'sentence'])
);
```

# --seed--

## --seed-contents--

```js
function splitify(str) {
  // Only change code below this line


  // Only change code above this line
}

splitify("Hello World,I-am code");
```

# --solutions--

```js
function splitify(str) {
  return str.split(/\W/);
}
```
