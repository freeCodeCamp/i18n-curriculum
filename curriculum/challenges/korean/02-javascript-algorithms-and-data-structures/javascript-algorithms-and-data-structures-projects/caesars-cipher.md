---
id: 56533eb9ac21ba0edf2244e2
title: 시저 암호
challengeType: 5
forumTopicId: 16003
dashedName: caesars-cipher
---

# --description--

One of the simplest and most widely known <dfn>ciphers</dfn> is a <dfn>Caesar cipher</dfn>, also known as a <dfn>shift cipher</dfn>. In a shift cipher the meanings of the letters are shifted by some set amount.

현대의 일반적인 사용 예로는 <a href="https://www.freecodecamp.org/news/how-to-code-the-caesar-cipher-an-introduction-to-basic-encryption-3bf77b4e19f7/" target="_blank" rel="noopener noreferrer nofollow">ROT13</a> 암호가 있으며, 여기서는 문자의 값이 13자리 이동 됩니다. 따라서 `A ↔ N`, `B ↔ O` 등으로 변환됩니다.

<a href="https://www.freecodecamp.org/news/how-to-code-the-caesar-cipher-an-introduction-to-basic-encryption-3bf77b4e19f7/" target="_blank" rel="noopener noreferrer nofollow">ROT13</a> 인코딩된 문자열을 입력값으로 받아 디코드 된 문자열을 반환하는 함수를 작성하세요.

모든 문자는 대문자로 변환됩니다. 비알파벳 문자(즉, 공백, 구두점)는 변형하지 않고 그대로 전달합니다.

# --hints--

`rot13("SERR PBQR PNZC")`는 문자열 `FREE CODE CAMP`로 디코드 되어야 합니다.

```js
assert(rot13('SERR PBQR PNZC') === 'FREE CODE CAMP');
```

`rot13("SERR CVMMN!")`는 문자열 `FREE PIZZA!`로 디코드 되어야 합니다.

```js
assert(rot13('SERR CVMMN!') === 'FREE PIZZA!');
```

`rot13("SERR YBIR?")`는 문자열 `FREE LOVE?`로 디코드 되어야 합니다.

```js
assert(rot13('SERR YBIR?') === 'FREE LOVE?');
```

`rot13("GUR DHVPX OEBJA SBK WHZCF BIRE GUR YNML QBT.")`는 문자열 `THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.`로 디코드 되어야 합니다.

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
