---
id: 56533eb9ac21ba0edf2244e2
title: Caesar-Verschlüsselung
challengeType: 5
forumTopicId: 16003
dashedName: caesars-cipher
---

# --description--

One of the simplest and most widely known <dfn>ciphers</dfn> is a <dfn>Caesar cipher</dfn>, also known as a <dfn>shift cipher</dfn>. In a shift cipher the meanings of the letters are shifted by some set amount.

Eine heute gängige Anwendung ist die <a href="https://www.freecodecamp.org/news/how-to-code-the-caesar-cipher-an-introduction-to-basic-encryption-3bf77b4e19f7/" target="_blank" rel="noopener noreferrer nofollow">ROT13</a>-Chiffre, in der die Werte der Buchstaben um 13 Stellen verschoben werden. Es gilt somit `A ↔ N`, `B ↔ O` und so weiter.

Schreibe eine Funktion, die einen <a href="https://www.freecodecamp.org/news/how-to-code-the-caesar-cipher-an-introduction-to-basic-encryption-3bf77b4e19f7/" target="_blank" rel="noopener noreferrer nofollow">ROT13</a>-kodierten String als Argument akzeptiert und dekodiert.

Alle Buchstaben werden großgeschrieben. Verwandle keine nicht alphabetischen Zeichen (bspw. Abstände und Interpunktion) um, gib diese aber weiter.

# --hints--

`rot13("SERR PBQR PNZC")` sollte dekodiert zu dem String `FREE CODE CAMP` werden

```js
assert(rot13('SERR PBQR PNZC') === 'FREE CODE CAMP');
```

`rot13("SERR CVMMN!")` sollte dekodiert zu dem String `FREE PIZZA!` werden

```js
assert(rot13('SERR CVMMN!') === 'FREE PIZZA!');
```

`rot13("SERR YBIR?")` sollte dekodiert zu dem String `FREE LOVE?` werden

```js
assert(rot13('SERR YBIR?') === 'FREE LOVE?');
```

`rot13("GUR DHVPX OEBJA SBK WHZCF BIRE GUR YNML QBT.")` sollte dekodiert zu dem String `THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.` werden

```js
assert(
  rot13('GUR DHVPX OEBJA SBK WHZCF BIRE GUR YNML QBT.') ===
    'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.'
);
```

# --seed--

## --seed-contents--

```js
function rot13(str) {
  return str;
}

rot13("SERR PBQR PNZC");
```

# --solutions--

```js
var lookup = {
  'A': 'N','B': 'O','C': 'P','D': 'Q',
  'E': 'R','F': 'S','G': 'T','H': 'U',
  'I': 'V','J': 'W','K': 'X','L': 'Y',
  'M': 'Z','N': 'A','O': 'B','P': 'C',
  'Q': 'D','R': 'E','S': 'F','T': 'G',
  'U': 'H','V': 'I','W': 'J','X': 'K',
  'Y': 'L','Z': 'M'
};

function rot13(encodedStr) {
  var codeArr = encodedStr.split("");  // String to Array
  var decodedArr = []; // Your Result goes here
  // Only change code below this line

  decodedArr = codeArr.map(function(letter) {
    if(lookup.hasOwnProperty(letter)) {
      letter = lookup[letter];
    }
    return letter;
  });

  // Only change code above this line
  return decodedArr.join(""); // Array to String
}
```
