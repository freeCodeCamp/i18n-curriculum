---
id: 587d774c367417b2b2512a9c
title: Ongeza maandishi mbadala kwa picha kwa ufikiaji usio na uwezo wa kuona
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. Hapa kuna mfano:

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

Watu walio na matatizo ya kuona hutegemea visoma skrini ili kubadilisha maudhui ya wavuti kuwa kiolesura cha sauti. Hawatapata habari ikiwa itawasilishwa tu kwa macho. Kwa picha, visoma skrini vinaweza kufikia sifa ya `alt` na kusoma yaliyomo ili kutoa habari muhimu.

Maandishi mazuri ya `alt` humpa msomaji maelezo mafupi ya picha. Kila wakati unapaswa kuwe na sifa ya `alt` kwenye picha yako. Kwa maelezo ya HTML5, hii sasa inachukuliwa kuwa ya lazima.

# --instructions--

Camper Cat hufanyika kuwa ninja ya coding na ninja halisi, ambaye anaunda tovuti ya kushiriki maarifa yake. Picha ya wasifu anayotaka kutumia inaonyesha ujuzi wake na inapaswa kuthaminiwa na wageni wote wa tovuti. Ongeza sifa ya `alt` katika lebo ya `img`, ambayo inaeleza Camper Cat anacheza karate. Lebo ya picha `src` haiunganishi na faili halisi, kwa hivyo unapaswa kuona maandishi ya `alt` kwenye onyesho

# --hints--

Lebo yako ya `img` inapaswa kuwa na sifa ya `alt` na haipaswi kuwa tupu.

```js
assert.isNotEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<img src="doingKarateWow.jpeg">
```

# --solutions--

```html
<img src="doingKarateWow.jpeg" alt="Someone doing karate">
```
