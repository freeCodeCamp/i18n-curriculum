---
id: 587d774c367417b2b2512a9c
title: Füge einen alternativen Text zu einem Bild für Sehbehinderte hinzu
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. Hier ist ein Beispiel:

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

Menschen mit Sehbehinderungen sind auf Screenreader angewiesen, um Webinhalte in eine Sprachausgabe umzuwandeln. Sie erhalten keine Informationen, wenn sie nur visuell dargestellt werden. Bei Bildern können Screenreader auf das `alt`-Attribut zugreifen und dessen Inhalt lesen, um wichtige Informationen zu liefern.

Ein guter `alt` Text liefert dem Leser eine kurze Beschreibung des Bildes. Du solltest immer ein `alt`-Attribut in dein Bild einfügen. Gemäß der HTML5-Spezifikation wird dies nun als verbindlich angesehen.

# --instructions--

Camper Cat ist zufällig sowohl ein Coding Ninja als auch ein tatsächlicher Ninja, der eine Website aufbaut um sein Wissen zu teilen. Das Profilbild, das er verwenden möchte, zeigt seine Fähigkeiten und sollte von allen Besuchern der Website wahrgenommen werden. Füge ein `alt`-Attribut in den `img`-Tag ein, das erklärt, dass Camper Cat Karate praktiziert. (Das Bild `src` verweist nicht auf eine tatsächliche Datei, du solltest also den `alt`-Text in der Anzeige sehen.)

# --hints--

Dein `img`-Tag sollte ein `alt`-Attribut besitzen und dieses sollte nicht leer sein.

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
