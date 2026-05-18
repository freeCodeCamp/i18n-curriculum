---
id: 5d712346c441eddfaeb5bdef
title: Alle Zahlen finden
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

Sie haben bereits Abkürzungen für häufige String-Muster wie alphanumerische Zeichen gelernt. Ein weiteres häufiges Muster ist das Suchen nach nur Ziffern oder Zahlen.

Die Abkürzung, um nach Ziffern zu suchen, ist `\d` mit einem Kleinbuchstaben `d`. Dies entspricht der Zeichenklasse `[0-9]`, die nach einem einzelnen Zeichen sucht, das eine Zahl zwischen null und neun ist.

# --instructions--

Verwenden Sie die Kurzzeichenklasse `\d`, um zu zählen, wie viele Ziffern in Filmtiteln vorkommen. Ausgeschriebene Zahlen („six“ statt 6) zählen nicht.

# --hints--

Ihr Regex sollte das Kurzzeichen verwenden, um Ziffern zu finden

```js
assert(/\\d/.test(numRegex.source));
```

Ihr Regex sollte das globale Flag verwenden.

```js
assert(numRegex.global);
```

Ihr Regex sollte 1 Ziffer im String `9` finden.

```js
assert('9'.match(numRegex).length == 1);
```

Ihr Regex sollte 2 Ziffern im String `Catch 22` finden.

```js
assert('Catch 22'.match(numRegex).length == 2);
```

Ihr Regex sollte 3 Ziffern im String `101 Dalmatians` finden.

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

Ihr Regex sollte keine Ziffern im String `One, Two, Three` finden.

```js
assert('One, Two, Three'.match(numRegex) == null);
```

Ihr Regex sollte 2 Ziffern im String `21 Jump Street` finden.

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

Ihr Regex sollte 4 Ziffern im String `2001: A Space Odyssey` finden.

```js
assert('2001: A Space Odyssey'.match(numRegex).length == 4);
```

# --seed--

## --seed-contents--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /change/; // Change this line
let result = movieName.match(numRegex).length;
```

# --solutions--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;
```
