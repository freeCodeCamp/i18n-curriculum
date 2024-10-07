---
id: 596fda99c69f779975a1b67d
title: Vorkommen eines Substrings zählen
challengeType: 1
forumTopicId: 302237
dashedName: count-occurrences-of-a-substring
---

# --description--

Erstelle eine Funktion oder zeige eine eingebaute Funktion, um die Anzahl der nicht überlappenden Vorkommen eines Substring in einem String zu zählen.

Die Funktion sollte zwei Argumente haben:

<ul>
  <li>wobei das erste Argument der zu suchende String ist, und</li>
  <li>die zweite ein Substring, nach dem gesucht werden soll.</li>
</ul>

Es sollte eine ganzzahlige Anzahl zurückgeben.

Der Abgleich sollte die höchste Anzahl von sich nicht überschneidenden Übereinstimmungen ergeben.

Im Allgemeinen bedeutet dies, dass der Abgleich von links nach rechts oder von rechts nach links erfolgt.

# --hints--

`countSubstring` sollte eine Funktion sein.

```js
assert(typeof countSubstring === 'function');
```

`countSubstring("the three truths", "th")` sollte `3` zurückgeben.

```js
assert.equal(countSubstring(testCases[0], searchString[0]), results[0]);
```

`countSubstring("ababababab", "abab")` sollte `2` zurückgeben.

```js
assert.equal(countSubstring(testCases[1], searchString[1]), results[1]);
```

`countSubstring("abaabba*bbaba*bbab", "a*b")` sollte `2` zurückgeben.

```js
assert.equal(countSubstring(testCases[2], searchString[2]), results[2]);
```

# --seed--

## --after-user-code--

```js
const testCases = ['the three truths', 'ababababab', 'abaabba*bbaba*bbab'];
const searchString = ['th', 'abab', 'a*b'];
const results = [3, 2, 2];
```

## --seed-contents--

```js
function countSubstring(str, subStr) {

  return true;
}
```

# --solutions--

```js
function countSubstring(str, subStr) {
  const escapedSubStr = subStr.replace(/[.+*?^$[\]{}()|/]/g, '\\$&');
  const matches = str.match(new RegExp(escapedSubStr, 'g'));
  return matches ? matches.length : 0;
}
```
