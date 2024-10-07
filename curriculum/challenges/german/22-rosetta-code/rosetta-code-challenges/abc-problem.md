---
id: 594810f028c0303b75339acc
title: ABC-Problem
challengeType: 1
forumTopicId: 302220
dashedName: abc-problem
---

# --description--

Du erhälst eine Sammlung von ABC-Blöcken (z.B. Kinderalphabet-Blöcke). Es gibt 20 Blöcke mit zwei Buchstaben pro Block. Ein vollständiges Alphabet ist auf allen Seiten der Blöcke garantiert. Die Mustersammlung von Blöcken:

<pre>(B O)
(X K)
(D Q)
(C P)
(N A)
(G T)
(R E)
(T G)
(Q D)
(F S)
(J W)
(H U)
(V I)
(A N)
(O B)
(E R)
(F S)
(L Y)
(P C)
(Z M)
</pre>

# --instructions--

Implementiere eine Funktion, die einen String (Wort) nimmt und bestimmt, ob das Wort mit der angegeben Sammlung von Blöcken geschrieben werden kann.

Einige Regeln sind zu beachten:

<ul>
  <li>Sobald ein Buchstabe auf einem Block verwendet wurde, kann dieser Block nicht mehr verwendet werden.</li>
  <li>Bei der Funktion sollte die Groß- und Kleinschreibung nicht beachtet werden.</li>
</ul>

# --hints--

`canMakeWord` sollte eine Funktion sein.

```js
assert(typeof canMakeWord === 'function');
```

`canMakeWord` sollte einen Boolean zurückgeben.

```js
assert(typeof canMakeWord('hi') === 'boolean');
```

`canMakeWord("bark")` sollte true zurückgeben.

```js
assert(canMakeWord(words[0]));
```

`canMakeWord("BooK")` sollte false zurückgeben.

```js
assert(!canMakeWord(words[1]));
```

`canMakeWord("TReAT")` sollte true zurückgeben.

```js
assert(canMakeWord(words[2]));
```

`canMakeWord("COMMON")` sollte false zurückgeben.

```js
assert(!canMakeWord(words[3]));
```

`canMakeWord("squAD")` sollte true zurückgeben.

```js
assert(canMakeWord(words[4]));
```

`canMakeWord("conFUSE")` sollte true zurückgeben.

```js
assert(canMakeWord(words[5]));
```

# --seed--

## --after-user-code--

```js
const words = ['bark', 'BooK', 'TReAT', 'COMMON', 'squAD', 'conFUSE'];
```

## --seed-contents--

```js
function canMakeWord(word) {

}
```

# --solutions--

```js
function canMakeWord(word) {
  const characters = 'BO XK DQ CP NA GT RE TG QD FS JW HU VI AN OB ER FS LY PC ZM';
  const blocks = characters.split(' ').map(pair => pair.split(''));

  const letters = [...word.toUpperCase()];
  let length = letters.length;
  const copy = new Set(blocks);

  letters.forEach(letter => {
    for (let block of copy) {
      const index = block.indexOf(letter);

      if (index !== -1) {
        length--;
        copy.delete(block);
        break;
      }
    }
  });
  return !length;
}
```
