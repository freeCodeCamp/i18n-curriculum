---
id: 587d7791367417b2b2512ab3
title: Mithilfe der text-align-Eigenschaft visuelles Gleichgewicht schaffen
challengeType: 0
videoUrl: 'https://scrimba.com/c/c3b4EAp'
forumTopicId: 301053
dashedName: create-visual-balance-using-the-text-align-property
---

# --description--

This section of the curriculum focuses on Applied Visual Design. The first group of challenges build on the given card layout to show a number of core principles.

Ein großer Anteil von Webinhalten besteht aus Text. CSS bietet mehrere Optionen, um sie mit der Eigenschaft `text-align` auszurichten.

`text-align: justify;` gibt jeder Zeile im Text die gleiche Breite.

`text-align: center;` zentriert den Text,

`text-align: right;` richtet den Text rechts aus

und `text-align: left;` (der Standardwert) richtet den Text links aus.

# --instructions--

Zentriere den Text des `h4`-Tags mit dem Inhalt "Google". Richte das Paragrafen-Tag mit den Informationen über die Googles Gründungsgeschichte im Blocksatz (justify) aus.

# --hints--

Dein Code sollte die text-align-Eigenschaft auf dem `h4`-Tag verwenden und sie auf `center` setzen.

```js
const h4Element =document.querySelector('h4')
const h4Style = window.getComputedStyle(h4Element);
assert.equal(h4Style?.textAlign, 'center');
```

Dein Code sollte die text-align-Eigenschaft auf dem `p`-Tag verwenden und sie auf `justify` setzen.

```js
const pElement =document.querySelector('p')
const pStyle = window.getComputedStyle(pElement);
assert.equal(pStyle?.textAlign, 'justify');
```

# --seed--

## --seed-contents--

```html
<style>
  h4 {

  }
  p {

  }
  .links {
    margin-right: 20px;

  }
  .fullCard {
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University.</p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```

# --solutions--

```html
<style>
  h4 {
    text-align: center;
  }
  p {
    text-align: justify;
  }
  .links {
    margin-right: 20px;

  }
  .fullCard {
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University.</p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```
