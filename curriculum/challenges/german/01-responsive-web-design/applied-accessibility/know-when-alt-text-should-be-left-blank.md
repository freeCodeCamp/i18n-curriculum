---
id: 587d774c367417b2b2512a9d
title: Wissen, wann Alt-Text leer bleiben sollte
challengeType: 0
videoUrl: 'https://scrimba.com/c/cM9P4t2'
forumTopicId: 301019
dashedName: know-when-alt-text-should-be-left-blank
---

# --description--

In the last challenge, you learned that including an `alt` attribute when using `img` tags is mandatory. However, sometimes images are grouped with a caption already describing them, or are used for decoration only. In these cases, `alt` text may seem redundant or unnecessary.

Wenn ein Bild bereits mit Textinhalt erklärt wird oder keine Bedeutung zu einer Seite hinzufügt, benötigt das `img` immer noch ein `alt`-Attribut, aber es kann auf einen leeren String gesetzt werden. Hier ein Beispiel:

```html
<img src="visualDecoration.jpeg" alt="">
```

Auch Hintergrundbilder fallen in der Regel unter das Stichwort "dekorativ". Allerdings werden sie in der Regel mit CSS-Regeln angewendet und sind daher nicht Teil des Markup-Screenreader-Prozesses.

**Hinweis:** Bei Bildern mit einer Bildunterschrift solltest du trotzdem `alt`-Text einfügen, da er Suchmaschinen hilft, den Inhalt des Bildes zu katalogisieren.

# --instructions--

Camper Cat hat ein Seitengerüst für den Blog-Teil seiner Website codiert. Er plant, seine beiden Artikel mit einem dekorativen Bild eines Samuraischwertes optisch zu trennen. Füge ein `alt`-Attribut zum `img`-Tag hinzu und setze es auf einen leeren String. (Beachte, dass das Bild `src` nicht auf eine tatsächliche Datei verlinkt - mache dir keine Sorgen, dass in der Anzeige keine Schwerter zu sehen sind.)

# --hints--

Dein `img`-Tag sollte ein `alt`-Attribut haben.

```js
assert.isTrue(document.querySelector('img')?.hasAttribute('alt'));
```

Das `alt`-Attribut sollte auf einen leeren String gesetzt werden.

```js
assert.isEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```

# --solutions--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg" alt="">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```
