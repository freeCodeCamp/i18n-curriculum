---
id: 66edc31c44f1b9c1d5c5ebca
title: Questionário sobre strings em JavaScript
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual é o valor de retorno do método `includes()`?

#### --distractors--

Se a substring for encontrada dentro da string, o método retorna a string. Caso contrário, ele retorna `undefined`.

---

Se a substring for encontrada dentro da string, o método retorna `true`. Caso contrário, ele retorna uma string vazia.

---

Se a substring for encontrada dentro da string, o método retorna a string. Caso contrário, ele retorna `null`.

#### --answer--

Se a substring for encontrada dentro da string, o método retorna `true`. Caso contrário, retorna `false`.

### --question--

#### --text--

Qual opção demonstra interpolação de string?

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

Qual das seguintes opções é o caractere de nova linha?

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

Qual das seguintes afirmações está correta sobre strings?

#### --distractors--

Strings são mutáveis e podem ser alteradas depois de serem criadas.

---

Strings são tipos de dados não primitivos.

---

Strings só podem ser criadas usando aspas simples.

#### --answer--

Strings são imutáveis.

### --question--

#### --text--

O que significa ASCII?

#### --distractors--

Código Padrão Americano para Informação na Internet

---

Código Sistemático Avançado para Intercâmbio Interno

---

Código Padrão Automático para Informação Interna

#### --answer--

Código Padrão Americano para o Intercâmbio de Informação

### --question--

#### --text--

Qual dos seguintes métodos extrai uma parte de uma string e retorna uma nova string?

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

Qual é o propósito do método `prompt()`?

#### --distractors--

Ele exibe uma mensagem no console.

---

Ele exibe uma caixa de alerta com uma mensagem.

---

Ele exibe uma caixa de confirmação com uma mensagem.

#### --answer--

Ele exibe uma caixa de diálogo que aguarda a entrada do usuário.

### --question--

#### --text--

Qual das seguintes é a maneira correta de acessar o terceiro caractere de uma string?

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

Como você pode obter o valor ASCII do primeiro caractere na string `"hello"`?

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

Qual método você pode usar para obter o caractere correspondente a um valor ASCII?

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

Qual dos seguintes exemplos de `indexOf` exibirá `-1` no console?

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

Como você pode verificar se a string `"JavaScript"` contém `"Script"`?

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

Qual dos seguintes extrai a substring `"Script"` da string `"JavaScript"`?

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

Como você converte a string `"JavaScript"` para maiúsculas?

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

Como você converte a string `"JavaScript"` para letras minúsculas?

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

Qual dos seguintes substituirá `"dogs"` por `"cats"` na string `"I love dogs"`.

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

Qual método é usado para repetir uma string um número especificado de vezes?

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

O que o seguinte código retornará: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

Ele lançará um erro.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

Qual método remove espaços em branco do início e do fim de uma string?

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

Qual das seguintes é a sintaxe correta para escapar aspas?

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```

