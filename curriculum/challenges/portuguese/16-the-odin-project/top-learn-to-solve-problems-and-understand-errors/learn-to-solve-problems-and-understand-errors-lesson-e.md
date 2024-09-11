---
id: 66581a7cb1eb2281159492fe
title: Lição E de Aprenda a resolver problemas e a entender erros
challengeType: 15
dashedName: learn-to-solve-problems-and-understand-errors-lesson-e
---

# --description--

Vamos assumir que você escreveu o seguinte código:

```javascript
const a = "Hello";
const b = "World";

console.log(c);
```

O código vai rodar, mas gerará um erro. Em termos técnicos, isso é chamado de <dfn>lançar</dfn> um erro. A primeira parte de um erro exibe o tipo de erro. Isso fornece a primeira pista sobre com o que você está lidando. Você aprenderá mais sobre os diferentes tipos de erro posteriormente na lição. Neste exemplo, você tem um `ReferenceError`.

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/175b5ef2a1b4758a7b75f4ef43d7e27203e5707b/foundations/javascript_basics/understanding_errors/imgs/00.png" width="100%" alt="Um erro sendo exibido na console do desenvolvedor" />

Um `ReferenceError` é lançado quando se refere a uma variável que não está declarada e/ou inicializada dentro do escopo atual. No nosso caso, a mensagem de erro explica que o erro ocorreu porque `c is not defined`.

Erros diferentes desse tipo têm mensagens diferentes baseadas no que está causando o `ReferenceError`. Por exemplo, outra mensagem que você pode encontrar é `ReferenceError: can't access lexical declaration 'X' before initialization`.

A próxima parte de um erro nos dá o nome do arquivo em que você pode encontrar o erro (neste caso, nosso `script.js`), e também o número da linha.

Isso permite que você navegue facilmente até a linha problemática no seu código. Aqui, o erro se origina na quarta linha de `script.js`, que é exibida como um link sob a mensagem de erro com o texto em `script.js:4`. Se você clicar no link, a maioria dos navegadores navegará até a linha exata do código e para o restante do seu script na guia Fontes das Ferramentas de Desenvolvedor.

Às vezes, o console do seu navegador também exibirá a coluna (ou caractere) da linha onde o erro está ocorrendo. No nosso exemplo, isso seria em `script.js:4:13`.

# --question--

## --text--

O que o `ReferenceError` no código em JavaScript fornecido indica?

## --answers--

A variável usada foi declarada, mas usada incorretamente em seu tipo.

---

A variável chamada no código não foi declarada dentro do escopo atual.

---

O código tem um problema de sintaxe que impede que ele seja analisado corretamente.

---

A variável usada foi declarada, mas não inicializada dentro do escopo atual.


## --video-solution--

2
