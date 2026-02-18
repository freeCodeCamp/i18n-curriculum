---
id: bad87fee1348bd9aedf0887a
title: Criar títulos com o elemento h2
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Durante as próximas lições, construiremos aos poucos um aplicativo para fotos de gatos em HTML5.

O elemento `h2` que você vai adicionar nesta etapa dará um título de nível dois à página da web.

Este elemento informa ao navegador sobre a estrutura do seu site. Elementos `h1` são frequentemente usados para títulos principais, enquanto elementos `h2` são geralmente usados para subtítulos. Também existem elementos `h3`, `h4`, `h5` e `h6` para indicar níveis diferentes de subtítulos.

# --instructions--

Adicione a tag `h2` com o texto "CatPhotoApp" para criar um segundo elemento HTML abaixo do elemento `h1` que contém o texto "Hello World".

# --hints--

Você deve criar um elemento `h2`.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

O elemento `h2` deve ter uma tag de fechamento.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

O elemento `h2` deve conter o texto `CatPhotoApp`.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

O elemento `h1` deve conter o texto `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

O elemento `h1` deve estar antes do elemento `h2`.

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
