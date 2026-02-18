---
id: 6551eebe6cbb2e6cadf9b468
title: Passo 2
challengeType: 20
dashedName: step-2
---

# --description--

Variáveis podem armazenar valores de diferentes tipos de dados. Você acabou de atribuir um valor inteiro, mas se quiser representar algum texto, precisa atribuir uma string. Strings são sequências de caracteres delimitadas por aspas simples ou duplas, mas você não pode iniciar uma string com aspas simples e terminá-la com aspas duplas ou vice-versa:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Exclua sua variável `number` e seu valor. Então, declare outra variável chamada `text` e atribua a string `'Hello World'` a essa variável.

# --hints--

Você não deve ter `number = 5` no seu código.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Você deve declarar uma variável chamada `text`. Preste atenção para colocar o nome da variável no início da linha.

```js
assert.match(code, /^text\s*=/m)
```

Você deve atribuir a string `'Hello World'` à sua variável `text`. Lembre-se de usar aspas simples ou duplas para delimitar a string e prestar atenção à diferenciação entre maiúsculas e minúsculas.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Seu código contém sintaxe inválida ou indentação inválida.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
