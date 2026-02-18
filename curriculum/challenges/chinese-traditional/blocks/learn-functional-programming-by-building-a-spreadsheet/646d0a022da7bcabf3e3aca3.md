---
id: 646d0a022da7bcabf3e3aca3
title: 步驟 45
challengeType: 0
dashedName: step-45
---

# --description--

在函式內傳回函式的概念稱為 <dfn>currying</dfn>。這種方法允許你創建一個變數來保存稍後要呼叫的函式，但同時取用外層函式呼叫的參數。

例如：

```js
const innerOne = elemValue(1);
const final = innerOne("A");
```

`innerOne` 會是你的 `inner` 函式（程式），其中 `num` 設定為 `1`，而 `final` 則會有 `id` 為 `"A1"` 的儲存格的值。這是可能的，因為函式（程式）可以存取在它們產生時宣告的所有變數。這稱為 <dfn>closure</dfn>。

你將會有更多練習。宣告一個名為 `addCharacters` 的函式（程式），它帶有一個 `character1` 參數。

# --hints--

你應該宣告一個 `addCharacters` 變數。

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*(?:var|let|const)\s+addCharacters/);
```

你應該使用 `const` 來宣告你的 `addCharacters` 變數。

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters/);
```

你的 `addCharacters` 變數應該是一個箭頭函式。

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters\s*=\s*(\(.*\)|[^\s()]+)\s*=>/);
```

你的 `addCharacters` 函式不應該使用隱式傳回。

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters\s*=\s*(\(.*\)|[^\s()]+)\s*=>\s*\{/);
```

你的 `addCharacters` 函式應該有一個 `character1` 參數。

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters\s*=\s*(\(\s*character1\s*\)|character1)\s*=>/);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="./styles.css" />
    <title>Functional Programming Spreadsheet</title>
  </head>
  <body>
    <div id="container">
      <div></div>
    </div>
    <script src="./script.js"></script>
  </body>
</html>
```

```css
#container {
  display: grid;
  grid-template-columns: 50px repeat(10, 200px);
  grid-template-rows: repeat(11, 30px);
}

.label {
  background-color: lightgray;
  text-align: center;
  vertical-align: middle;
  line-height: 30px;
}
```

```js
const isEven = num => num % 2 === 0;
const sum = nums => nums.reduce((acc, el) => acc + el, 0);
const average = nums => sum(nums) / nums.length;

const median = nums => {
  const sorted = nums.slice().sort((a, b) => a - b);
  const length = sorted.length;
  const middle = length / 2 - 1;
  return isEven(length)
    ? average([sorted[middle], sorted[middle + 1]])
    : sorted[Math.ceil(middle)];
}

const spreadsheetFunctions = {
  sum,
  average,
  median
}

const range = (start, end) => Array(end - start + 1).fill(start).map((element, index) => element + index);
const charRange = (start, end) => range(start.charCodeAt(0), end.charCodeAt(0)).map(code => String.fromCharCode(code));

--fcc-editable-region--
const evalFormula = (x, cells) => {
  const idToText = id => cells.find(cell => cell.id === id).value;
  const rangeRegex = /([A-J])([1-9][0-9]?):([A-J])([1-9][0-9]?)/gi;
  const rangeFromString = (num1, num2) => range(parseInt(num1), parseInt(num2));
  const elemValue = num => {
    const inner = character => {
      return idToText(character + num);
    }
    return inner;
  }

}
--fcc-editable-region--

window.onload = () => {
  const container = document.getElementById("container");
  const createLabel = (name) => {
    const label = document.createElement("div");
    label.className = "label";
    label.textContent = name;
    container.appendChild(label);
  }
  const letters = charRange("A", "J");
  letters.forEach(createLabel);
  range(1, 99).forEach(number => {
    createLabel(number);
    letters.forEach(letter => {
      const input = document.createElement("input");
      input.type = "text";
      input.id = letter + number;
      input.ariaLabel = letter + number;
      input.onchange = update;
      container.appendChild(input);
    })
  })
}

const update = event => {
  const element = event.target;
  const value = element.value.replace(/\s/g, "");
  if (!value.includes(element.id) && value.startsWith('=')) {

  }
}
```
