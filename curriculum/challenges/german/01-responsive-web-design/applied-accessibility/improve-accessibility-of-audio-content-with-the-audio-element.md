---
id: 587d7789367417b2b2512aa4
title: Verbessere den Zugriff auf Audio-Inhalte mit dem Audio-Element
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

Das `audio`-Tag unterstützt das `controls`-Attribut. Dies zeigt die Standard-Wiedergabe-, Pause- und andere Steuerelemente des Browsers an und unterstützt die Tastaturfunktionalität. Dies ist ein boolesches Attribut, d. h. es benötigt keinen Wert, sein Vorhandensein im Tag schaltet die Einstellung ein.

Hier ist ein Beispiel:

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**Hinweis:** Multimediainhalte haben in der Regel sowohl visuelle als auch auditive Komponenten. Sie benötigt synchronisierte Untertitel und ein Transkript, damit Benutzer mit Seh- und/oder Hörbehinderungen darauf zugreifen können. Im Allgemeinen ist ein Webentwickler nicht für die Erstellung der Untertitel oder des Transkripts verantwortlich, muss aber wissen, wie er sie einfügen kann.

# --instructions--

Zeit, eine Pause von Camper Cat zu machen und seinen Kollegen Zersiax (@zersiax) zu treffen, einen Meister der Barrierefreiheit und einen Screenreader-Nutzer. Um einen Clip seines Screenreaders in Aktion zu hören, füge ein `audio`-Element nach dem `p`-Tag ein. Füge das `controls`-Attribut hinzu. Then place a `source` element inside the `audio` tags with the `src` attribute set to `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` and `type` attribute set to `"audio/mpeg"`.

**Hinweis:** Der Audioclip klingt vielleicht schnell und ist schwer verständlich, aber das ist eine normale Geschwindigkeit für Benutzer von Screenreadern.

# --hints--

Dein Code sollte ein `audio`-Tag haben.

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

Dein `audio`-Element sollte einen schließenden Tag haben.

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

Das `audio`-Tag sollte das `controls`-Attribut haben.

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

Dein Code sollte ein `source`-Tag haben.

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

Dein `source`-Tag sollte sich innerhalb der `audio`-Tags befinden.

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

Der Wert für das `src`-Attribut im `source`-Tag sollte genau mit dem Link in der Anleitung übereinstimmen.

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

Dein Code sollte ein `type`-Attribut im `source`-Tag mit einem Wert von audio/mpeg enthalten.

```js
assert.equal(document.querySelector('source')?.getAttribute('type'), 'audio/mpeg');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>



  </main>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>
    <audio controls>
      <source src="https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3" type="audio/mpeg"/>
    </audio>
  </main>
</body>
```
