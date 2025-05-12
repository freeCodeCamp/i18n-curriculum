---
id: 6551eebe6cbb2e6cadf9b468
title: Schritt 2
challengeType: 20
dashedName: step-2
---

# --description--

Variablen können Werte unterschiedlicher Datentypen speichern. Du hast gerade einen Integer-Wert zugewiesen, aber wenn die Variable einen Text repräsentieren soll, musst du einen String zuweisen. Strings sind Sequenzen von Zeichen, die von einfachen oder doppelten Anführungszeichen umgeben sind, aber Du kannst den String nicht mit einem einzigen Anführungszeichen starten und sie mit einem doppelten Anführungszeichen beenden, oder umgekehrt:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Lösche deine `number` Variable und ihren Wert. Dann erstelle eine andere Variable namens `text` und weise den Wert `'Hello World'` dieser Variable zu.

# --hints--

Du solltest nicht `number = 5` in deinem Code haben.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Du solltest eine Variable mit dem Namen `text` deklarieren. Achte darauf, dass der Variablenname am Anfang der Zeile steht.

```js
assert.match(code, /^text\s*=/m)
```

Du solltest der `text`-Variablen den Wert `'Hello World'` zuweisen. Denk daran, dass du entweder einzelne oder doppelte Anführungszeichen für den string verwendest, und auf Groß- und Kleinschreibung zu achten.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Dein Code enthält ungültige Syntax und/oder ungültige Einrückung.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
