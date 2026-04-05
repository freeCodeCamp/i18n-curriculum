---
id: 646d0a022da7bcabf3e3aca3
title: 45단계
challengeType: 0
dashedName: step-45
---

# --description--

함수 안에서 함수를 반환하는 개념을 <dfn>커링</dfn>이라고 합니다. 이 방법은 나중에 호출할 함수를 담는 변수를 만들 수 있게 해주며, 외부 함수 호출의 매개변수에 대한 참조를 유지합니다.

예를 들어:

```js
const innerOne = elemValue(1);
const final = innerOne("A");
```

`innerOne`는 `inner` 함수가 되고, `num`는 `1`로 설정되며, `final`는 `id`의 `"A1"` 셀 값을 갖게 됩니다. 이는 함수가 생성될 때 선언된 모든 변수에 접근할 수 있기 때문에 가능합니다. 이를 <dfn>클로저</dfn>라고 합니다.

이것을 더 연습할 것입니다. `addCharacters` 매개변수를 받는 `character1` 함수를 선언하세요.

# --hints--

`addCharacters` 변수를 선언해야 합니다.

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*(?:var|let|const)\s+addCharacters/);
```

`const`를 사용해 `addCharacters` 변수를 선언해야 합니다.

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters/);
```

`addCharacters` 변수는 화살표 함수여야 합니다.

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters\s*=\s*(\(.*\)|[^\s()]+)\s*=>/);
```

`addCharacters` 함수는 암시적 반환을 사용하지 않아야 합니다.

```js
assert.match(code, /const\s+evalFormula\s*=\s*\(\s*x\s*,\s*cells\s*\)\s*=>\s*{\s*const\s+idToText\s*=\s*(\(\s*id\s*\)|id)\s*=>\s*cells\.find\(\s*(\(\s*cell\s*\)|cell)\s*=>\s*(?:cell\.id\s*===\s*id|id\s*===\s*cell\.id)\s*\)\.value\s*;?\s*const\s+rangeRegex\s*=\s*\/\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\):\(\[A-J\]\)\(\[1-9\]\[0-9\]\?\)\/(gi|ig)\s*;?\s*const\s+rangeFromString\s*=\s*\(\s*num1\s*,\s*num2\s*\)\s*=>\s*range\(\s*parseInt\(\s*num1\s*\)\s*,\s*parseInt\(\s*num2\s*\)\s*\)\s*;?\s*const\s+elemValue\s*=\s*(\(\s*num\s*\)|num)\s*=>\s*\{\s*const\s+inner\s*=\s*(\(\s*character\s*\)|character)\s*=>\s*\{\s*return\s+idToText\(\s*character\s*\+\s*num\s*\)\s*;?\s*}\s*;?\s*return\s+inner\s*;?\s*\}\s*const\s+addCharacters\s*=\s*(\(.*\)|[^\s()]+)\s*=>\s*\{/);
```

`addCharacters` 함수는 `character1` 매개변수를 가져야 합니다.

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
