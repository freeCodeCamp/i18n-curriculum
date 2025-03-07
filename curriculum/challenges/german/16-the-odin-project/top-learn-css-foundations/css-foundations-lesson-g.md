---
id: 63ee35450d8d4841c3a70920
title: CSS Foundations Lesson G
challengeType: 19
dashedName: css-foundations-lesson-g
---

# --description--

Bei internem CSS (oder eingebettetem CSS) wird das CSS in die HTML-Datei selbst eingefügt, anstatt eine komplett separate Datei zu erstellen. Bei der internen Methode platzierst du alle Regeln innerhalb eines Paares von öffnenden und schließenden `<style>`-Tags, die dann innerhalb der öffnenden und schließenden `<head>`-Tags deiner HTML-Datei platziert werden. Da die Stile direkt innerhalb der `<head>`-Tags platziert werden, brauchst du kein `<link>`-Element mehr, das die externe Methode erfordert.

Neben diesen Unterschieden ist die Syntax genau dieselbe wie bei der externen Methode (Selektor, geschwungene Klammern, Deklarationen):

```html
<head>
  <style>
    div {
      color: white;
      background-color: black;
    }

    p {
      color: red;
    }
  </style>
</head>
<body>...</body>
```

Diese Methode kann nützlich sein, um einer einzelnen Seite einer Website einzigartige Stile hinzuzufügen, aber sie hält die Inhalte nicht getrennt wie die externe Methode, und je nachdem, wie viele Regeln und Deklarationen es gibt, kann die HTML-Datei recht groß werden.

# --questions--

## --text--

Welcher der folgenden Unterschiede besteht zwischen internen und externen CSS-Methoden?

## --answers--

Bei der externen Methode werden die CSS-Regeln in einer separaten Datei platziert, während die interne Methode die CSS-Regeln in der HTML-Datei selbst platziert.

---

Die interne Methode hält CSS getrennt von HTML, während die externe Methode CSS direkt in HTML einbettet.

---

Die interne Methode verwendet das `<link>`-Element, um CSS mit HTML zu verknüpfen, wohingegen die externe Methode CSS direkt in HTML einbettet.


## --video-solution--

1
