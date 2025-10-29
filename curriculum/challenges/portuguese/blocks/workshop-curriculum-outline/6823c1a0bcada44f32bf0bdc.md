---
id: 6823c1a0bcada44f32bf0bdc
title: Passo 4
challengeType: 0
dashedName: step-4
---

# --description--

Um elemento `h1` é o título principal de uma página da web e você deve usar apenas um por página. Elementos `h2` representam subtítulos.Você pode ter múltiplos por página e eles se parecem com isto:

```html
<h2>This is a subheading.</h2>
```

Transforme o texto `Full Stack Curriculum` em um elemento `h2` envolvendo-o com as tags de abertura e fechamento `h2`.

# --hints--

Seu elemento `h2` deve ter uma tag de abertura `<h2>`.

```js
assert.exists(document.querySelector("h2"));
```

Seu elemento `h2` deve ter uma tag de fechamento `</h2>`.

```js
assert.match(code, /<\/h2\s*\>/);
```

Seu elemento `h2` deve ser assim: `<h2>Full Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full\s*Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full Stack Curriculum
--fcc-editable-region--
```
