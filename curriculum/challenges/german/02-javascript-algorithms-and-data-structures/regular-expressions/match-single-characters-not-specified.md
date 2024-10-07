---
id: 587d7db6367417b2b2512b98
title: Erkennung einzelner nicht spezifizierter Zeichen
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

Um einen negierten Zeichensatz zu erstellen, setzt du ein Caret-Zeichen (`^`) nach der öffnenden Klammer und vor den Zeichen, die du nicht abgleichen willst.

Zum Beispiel passt `/[^aeiou]/gi` auf alle Zeichen, die keine Vokale sind. Beachte, dass Zeichen wie `.`, `!`, `[`, `@`, `/` und Leerzeichen erkannt werden - der negierte Vokalzeichensatz schließt nur die Vokale aus.

# --instructions--

Erstelle einen einzelnen regulären Ausdruck, der auf alle Zeichen passt, die keine Zahlen oder Vokale sind. Vergiss nicht, die entsprechenden Flags in deine regulären Ausdruck aufzunehmen.

# --hints--

Dein regulärer Ausdruck `myRegex` sollte 9 Einträge finden.

```js
assert(result.length == 9);
```

Dein regulärer Ausdruck `myRegex` sollte das globale Flag verwenden.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

Dein regulärer Ausdruck`myRegex` sollte die Groß-/Kleinschreibung unberücksichtigt lassen.

```js
assert(myRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "3 blind mice.";
let myRegex = /change/; // Change this line
let result = myRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "3 blind mice.";
let myRegex = /[^0-9aeiou]/gi; // Change this line
let result = quoteSample.match(myRegex); // Change this line
```
