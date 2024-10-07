---
id: bad87fee1348bd9aec908846
title: Erstelle eine Bootstrap-Überschrift
challengeType: 0
forumTopicId: 16812
dashedName: create-a-bootstrap-headline
---

# --description--

Now let's build something from scratch to practice our HTML, CSS and Bootstrap skills.

Wir werden einen jQuery-Playground bauen, den wir dann in unseren jQuery-Aufgaben verwenden werden.

Erstelle für den Anfang ein `h3`-Element mit dem Text `jQuery Playground`.

Gib deinem `h3`-Element mit der `text-primary` Bootstrap-Klasse eine Farbe und zentriere es mit der `text-center` Bootstrap-Klasse.

# --hints--

Du solltest deiner Seite ein `h3`-Element hinzufügen.

```js
assert.lengthOf(document.querySelectorAll('h3'),1);
```

Dein `h3`-Element sollte ein abschließendes Tag enthalten.

```js
assert.match(code,/<\/h3>/g);
assert.match(code,/<h3/g);
assert.equal( code.match(/<\/h3>/g).length , code.match(/<h3/g).length);
```

Du solltest deinem `h3`-Element mithilfe der Klasse `text-primary` Farbe verliehen haben

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-primary'));
```

Dein `h3` Element sollte mit Hilfe der Klasse `text-center` zentriert werden

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-center'));
```

Dein `h3`-Element soll den Text `jQuery Playground` enthalten.

```js
assert.match(document.querySelector('h3')?.textContent, /jquery(\s)+playground/gi);
```

# --seed--

## --seed-contents--

```html

```

# --solutions--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```
