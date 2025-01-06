---
id: bad87fee1348bd9aedf08804
title: Comentar em HTML
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cGyGbca'
forumTopicId: 16782
dashedName: comment-out-html
---

# --description--

Remember that in order to start a comment, you need to use `<!--` and to end a comment, you need to use `-->`

Neste exercício, você vai precisar encerrar o comentário antes do elemento `h2` iniciar.

# --instructions--

Comente os elementos `h1` e `p`, mas deixe o elemento `h2` fora do comentário.

# --hints--

O elemento `h1` deve estar comentado para não ser exibido na página.

```js
assert.isEmpty(document.querySelectorAll('h1'));
```

O elemento `h2` não deve ser comentado para poder ser exibido na página.

```js
assert.isNotEmpty(document.querySelectorAll('h2'));
```

O elemento `p` deve estar comentado para não ser exibido na página.

```js
assert.isEmpty(document.querySelectorAll('p'));
```

Todos os comentários devem ser fechados com `-->`.

```js
assert.isAbove(code.match(/[^fc]-->/g).length, 1);
```

Você não deve mudar a ordem dos elementos `h1`, `h2` e `p` no código.

```js
assert.strictEqual(code.match(/<([a-z0-9]){1,2}>/g)[0],'<h1>');
assert.strictEqual(code.match(/<([a-z0-9]){1,2}>/g)[1],'<h2>');
assert.strictEqual(code.match(/<([a-z0-9]){1,2}>/g)[2],'<p>');
```

# --seed--

## --seed-contents--

```html
<!--
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
-->
```

# --solutions--

```html
<!--<h1>Hello World</h1>-->
<h2>CatPhotoApp</h2> 
<!--<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p> -->
```
