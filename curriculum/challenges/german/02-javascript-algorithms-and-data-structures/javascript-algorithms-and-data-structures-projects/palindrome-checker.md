---
id: aaa48de84e1ecc7c742e1124
title: Palindrom-Prüfer
challengeType: 5
forumTopicId: 16004
dashedName: palindrome-checker
---

# --description--

Return `true` if the given string is a palindrome. Otherwise, return `false`.

Ein <dfn>Palindrom</dfn> kann sowohl ein Wort als auch ein Satz sein, das sowohl vorwärts als auch rückwärts gelesen dasselbe Wort bzw. denselben Satz ergibt. Interpunktion, Leerzeichen sowie Groß- und Kleinschreibung ausgenommen.

**Hinweis:** Entferne **alle nicht alphanumerischen Zeichen** (Interpunktion, Leerzeichen und Symbole) und setze alles in dieselbe Schreibweise (Klein- oder Großbuchstaben), um nach Palindromen zu filtern.

Wir übergeben Strings mit unterschiedlichen Formaten, wie zum Beispiel `racecar`, `RaceCar` und `race CAR`.

Auch Strings mit speziellen Symbolen wie `2A3*3a2`, `2A3 3a2` und `2_A3*3#A2` werden dir übergeben.

# --hints--

`palindrome("eye")` sollte einen Boolean zurückgeben.

```js
assert(typeof palindrome('eye') === 'boolean');
```

`palindrome("eye")` sollte `true` zurückgeben.

```js
assert(palindrome('eye') === true);
```

`palindrome("_eye")` sollte `true` zurückgeben.

```js
assert(palindrome('_eye') === true);
```

`palindrome("race car")` sollte `true` zurückgeben.

```js
assert(palindrome('race car') === true);
```

`palindrome("not a palindrome")` sollte `false` zurückgeben.

```js
assert(palindrome('not a palindrome') === false);
```

`palindrome("A man, a plan, a canal. Panama")` sollte `true` zurückgeben.

```js
assert(palindrome('A man, a plan, a canal. Panama') === true);
```

`palindrome("never odd or even")` sollte `true` zurückgeben.

```js
assert(palindrome('never odd or even') === true);
```

`palindrome("nope")` sollte `false` zurückgeben.

```js
assert(palindrome('nope') === false);
```

`palindrome("almostomla")` sollte `false` zurückgeben.

```js
assert(palindrome('almostomla') === false);
```

`palindrome("My age is 0, 0 si ega ym.")` sollte `true` zurückgeben.

```js
assert(palindrome('My age is 0, 0 si ega ym.') === true);
```

`palindrome("1 eye for of 1 eye.")` sollte `false` zurückgeben.

```js
assert(palindrome('1 eye for of 1 eye.') === false);
```

`palindrome("0_0 (: /-\ :) 0-0")` sollte `true` zurückgeben.

```js
assert(palindrome('0_0 (: /- :) 0-0') === true);
```

`palindrome("five|\_/|four")` sollte `false` zurückgeben.

```js
assert(palindrome('five|_/|four') === false);
```

# --seed--

## --seed-contents--

```js
function palindrome(str) {
  return true;
}

palindrome("eye");
```

# --solutions--

```js
function palindrome(str) {
  var string = str.toLowerCase().split(/[^A-Za-z0-9]/gi).join('');
  var aux = string.split('');
  if (aux.join('') === aux.reverse().join('')){
    return true;
  }

  return false;
}
```
