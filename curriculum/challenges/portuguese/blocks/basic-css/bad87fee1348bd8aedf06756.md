---
id: bad87fee1348bd8aedf06756
title: Sobrescrever estilos de classes por estilos de ID
challengeType: 0
videoUrl: 'https://scrimba.com/c/cRkpDhB'
forumTopicId: 18251
dashedName: override-class-declarations-by-styling-id-attributes
---

# --description--

We just proved that browsers read CSS from top to bottom in order of their declaration. That means that, in the event of a conflict, the browser will use whichever CSS declaration came last. Notice that if we even had put `blue-text` before `pink-text` in our `h1` element's classes, it would still look at the declaration order and not the order of their use!

Mas isso não é tudo. Existem outras maneiras de sobrescrever o CSS. Você se lembra dos atributos de id?

Vamos sobrescrever as classes `pink-text` e `blue-text` dando ao elemento `h1` um id e então estilizar este id de forma a tornar o elemento `h1` laranja.

# --instructions--

Dê ao elemento `h1` o atributo `id` com o valor `orange-text`. Lembre-se de que é assim que se aplica um id:

```html
<h1 id="orange-text">
```

Não apague as classes `blue-text` e `pink-text` do elemento `h1`.

Crie uma declaração CSS para o id `orange-text` no elemento `style`. Um exemplo de como fazer isso:

```css
#brown-text {
  color: brown;
}
```

**Observação:** não importa se você declara esse CSS acima ou abaixo da classe `pink-text`, já que o atributo `id` sempre terá prioridade.

# --hints--

O elemento `h1` deve ter a classe `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

O elemento `h1` deve ter a classe `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

O elemento `h1` deve ter o id `orange-text`.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'),'orange-text');
```

Deve haver apenas 1 elemento `h1`.

```js
assert.lengthOf(document.querySelectorAll('h1'), 1);
```

O id `orange-text` deve ser referenciado no CSS.

```js
assert.match(__helpers.removeCssComments(code), /#orange-text\s*{/gi);
```

O `h1` não deve ter nenhum atributo `style`.

```js
assert.notMatch(__helpers.removeHtmlComments(code), /<h1.*style.*>/gi);
```

O elemento `h1` deve ser laranja.

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 165, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 class="pink-text blue-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
  #orange-text {
    color: orange;
  }  
</style>
<h1 id="orange-text"  class="pink-text blue-text">Hello World!</h1>
```
