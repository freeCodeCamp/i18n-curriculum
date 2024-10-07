---
id: 587d774c367417b2b2512a9c
title: Adicionar um texto alternativo em imagens para acessibilidade de deficientes visuais
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. Aqui está um exemplo:

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

Pessoas com deficiências visuais dependem de leitores de tela para converter conteúdo da web em uma interface de áudio. Eles não vão obter informações se elas forem apresentadas apenas visualmente. Para imagens, os leitores de tela podem acessar o atributo `alt` e ler seu conteúdo para fornecer informações importantes.

Um bom texto no atributo `alt` fornece ao leitor uma breve descrição da imagem. Você sempre deve incluir um atributo `alt` na sua imagem. Segundo a especificação do HTML5, isso agora é considerado obrigatório.

# --instructions--

O Camper Cat é tanto um ninja do código quanto um ninja de verdade. Ele está construindo um site para compartilhar seu conhecimento. A foto de perfil que ele quer usar mostra suas habilidades e deve ser apreciada por todos os visitantes do site. Adicione um atributo `alt` na tag `img` que explique que o Camper Cat está fazendo caratê. (O `src` da imagem não aponta para nenhum arquivo, então você deve ver o texto do `alt` na tela.)

# --hints--

A tag `img` deve ter um atributo `alt` e o texto dele não deve estar vazio.

```js
assert.isNotEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<img src="doingKarateWow.jpeg">
```

# --solutions--

```html
<img src="doingKarateWow.jpeg" alt="Someone doing karate">
```
