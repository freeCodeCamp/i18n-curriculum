---
id: bad87fee1348bd9bec908846
title: Erstelle eine Bootstrap Zeile
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

Jetzt erstellen wir eine Bootstrap Zeile für unsere Inline-Elemente.

Erstelle ein `div` Element unter dem `h3` Tag mit der Klasse `row`.

# --hints--

Du solltest ein `div` Element unter deinem `h3` Element hinzufügen.

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

Dein `div` Element soll die Klasse `row` haben

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

Dein `row div` soll innerhalb des `container-fluid div` verschachtelt sein

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

Dein `div` Element sollte einen abschließenden Tag haben.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>

</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row"></div>
</div>
```
