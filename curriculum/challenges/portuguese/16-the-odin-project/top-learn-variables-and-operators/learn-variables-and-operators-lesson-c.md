---
id: 65e1957a500d930ce8ed90a6
title: Lição C de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-c
---

# --description--

Para declarar uma constante (uma "variável inalterável"), use `const` em vez de `let`:

```javascript
const myBirthday = '16-09-2003';
```

Variáveis declaradas usando `const` são chamadas de "constantes". Elas não podem ser reatribuídas. Uma tentativa de fazer isso causaria um erro:

```javascript
const myBirthday = '16-09-2003';

myBirthday = '01-01-2001'; // error, can't reassign the constant!
```

Quando um programador tem certeza de que uma variável nunca mudará, ele pode declará-la com `const` para garantir isso e para comunicar esse fato a todos.

# --question--

## --text--

Qual é o resultado de tentar reatribuir uma variável declarada com `const` em JavaScript?

## --answers--

A reatribuição ocorre sem erros.

---

Um erro é lançado porque variáveis declaradas com `const` não podem ser reatribuídas.

---

O JavaScript ignora silenciosamente a reatribuição.

---

O tipo da variável é automaticamente alterado para `let`.


## --video-solution--

2
