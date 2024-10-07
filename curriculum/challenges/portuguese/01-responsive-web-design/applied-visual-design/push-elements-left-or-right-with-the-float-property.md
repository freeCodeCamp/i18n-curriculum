---
id: 587d78a3367417b2b2512ace
title: Empurrar os elementos para a esquerda ou direita com a propriedade float
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MDqu2'
forumTopicId: 301066
dashedName: push-elements-left-or-right-with-the-float-property
---

# --description--

The next positioning tool does not actually use `position`, but sets the `float` property of an element. Floating elements are removed from the normal flow of a document and pushed to either the `left` or `right` of their containing parent element. It's commonly used with the `width` property to specify how much horizontal space the floated element requires.

# --instructions--

O código fornecido funcionaria bem como um layout de duas colunas, com os elementos `section` e `aside` um ao lado do outro. Dê ao elemento `#left` a propriedade `float` com o valor `left` e ao elemento `#right` a propriedade `float` com o valor `right`.

# --hints--

O elemento com id `left` deve ter a propriedade `float` com o valor `left`.

```js
const leftElement = document.querySelector('#left');
const leftStyle = window.getComputedStyle(leftElement);
assert.equal(leftStyle?.float, 'left');
```

O elemento com id `right` deve ter a propriedade`float` com o valor `right`.

```js
const rightElement = document.querySelector('#right');
const rightStyle = window.getComputedStyle(rightElement);
assert.equal(rightStyle?.float, 'right');
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
    #left {

      width: 50%;
    }
    #right {

      width: 40%;
    }
    aside, section {
      padding: 2px;
      background-color: #ccc;
    }
  </style>
</head>
<body>
  <header>
    <h1>Welcome!</h1>
  </header>
  <section id="left">
    <h2>Content</h2>
    <p>Good stuff</p>
  </section>
  <aside id="right">
    <h2>Sidebar</h2>
    <p>Links</p>
  </aside>
</body>
```

# --solutions--

```html
<head>
  <style>
    #left {
      float: left;
      width: 50%;
    }
    #right {
      float: right;
      width: 40%;
    }
    aside, section {
      padding: 2px;
      background-color: #ccc;
    }
  </style>
</head>
<body>
  <header>
    <h1>Welcome!</h1>
  </header>
  <section id="left">
    <h2>Content</h2>
    <p>Good stuff</p>
  </section>
  <aside id="right">
    <h2>Sidebar</h2>
    <p>Links</p>
  </aside>
</body>
```
