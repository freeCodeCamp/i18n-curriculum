---
id: 587d7789367417b2b2512aa4
title: Boresha Ufikivu wa Maudhui ya Sauti kwa Kipengele cha sauti
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

Lebo ya `audio` inaauni `controls` sifa. Hii inaonyesha uchezaji chaguomsingi wa kivinjari, sitisha, na vidhibiti vingine, na inasaidia utendakazi wa kibodi. Hii ni sifa ya boolean, kumaanisha kuwa haihitaji thamani, uwepo wake kwenye lebo huwasha mpangilio.

Hapa kuna mfano:

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**Kumbuka:** Maudhui ya multimedia kawaida huwa na vipengele vya kuona na kusikia. Inahitaji manukuu yaliyosawazishwa na nakala ili watumiaji walio na matatizo ya kuona na/au kusikia waweze kuifikia. Kwa ujumla, msanidi wa wavuti hana jukumu la kuunda manukuu au nakala, lakini anahitaji kujua kuziongeza.

# --instructions--

Ni wakati wa kupumzika kutoka kwa Camper Cat na kukutana na mwanakambi mwenza Zersiax (@zersiax), bingwa wa ufikivu na mtumiaji anayesoma skrini. To hear a clip of his screen reader in action, add an `audio` element after the `p` element. Ongeza sifa ya `controls`. Then place a `source` element inside the `audio` tags with the `src` attribute set to `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` and `type` attribute set to `"audio/mpeg"`.

**Kumbuka:** Klipu ya sauti inaweza kusikika haraka na kuwa ngumu kueleweka, lakini hiyo ni kasi ya kawaida kwa watumiaji wa kisomaji skrini.

# --hints--

Msimbo wako unapaswa kuwa na lebo moja ya `audio`.

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

Kipengele chako cha `audio` kinapaswa kuwa na lebo ya kufunga.

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

Lebo ya `audio` inapaswa kuwa na sifa ya `controls`.

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

Msimbo wako unafaa kuwa na lebo moja ya `source`.

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

Lebo yako ya `source` inapaswa kuwa ndani ya lebo za `audio`.

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

Thamani ya sifa ya `src` kwenye lebo ya `source` inapaswa kuendana na kiungo katika maagizo haswa.

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

Msimbo wako unapaswa kujumuisha sifa ya `type` kwenye lebo ya `source` yenye thamani ya audio/mpeg.

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
