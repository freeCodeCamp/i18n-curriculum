---
id: 6551eebe6cbb2e6cadf9b468
title: Schritt 2
challengeType: 20
dashedName: step-2
---

# --description--

Variablen können Werte verschiedener Datentypen speichern. Sie haben gerade einen ganzzahligen Wert zugewiesen, aber wenn Sie Text darstellen möchten, müssen Sie einen String zuweisen. Strings sind Folgen von Zeichen, die von einfachen oder doppelten Anführungszeichen umschlossen sind, aber Sie können einen String nicht mit einem einfachen Anführungszeichen beginnen und mit einem doppelten beenden oder umgekehrt:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Löschen Sie Ihre `number`-Variable und ihren Wert. Deklarieren Sie dann eine andere Variable namens `text` und weisen Sie dieser Variable den String `'Hello World'` zu.

# --hints--

Sie sollten `number = 5` nicht in Ihrem Code haben.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Sie sollten eine Variable namens `text` deklarieren. Achten Sie darauf, den Variablennamen am Anfang der Zeile zu platzieren.

```js
assert.match(code, /^text\s*=/m)
```

Sie sollten den String `'Hello World'` Ihrer `text`-Variable zuweisen. Denken Sie daran, entweder einfache oder doppelte Anführungszeichen zu verwenden, um den String einzuschließen, und achten Sie auf die Groß- und Kleinschreibung.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Ihr Code enthält ungültige Syntax und/oder ungültige Einrückungen.

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
