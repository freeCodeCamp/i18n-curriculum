---
id: 644a0eadcbccaf1d13c7d137
title: 步驟 19
challengeType: 0
dashedName: step-19
---

# --description--

在以二進制爲基數的數字系統中，最右邊的數字代表個位，左邊的下一位數字代表兩位，然後是四位，然後是八位，依此類推。 在這個系統中，每個數字的位值是其右邊數字的兩倍。

以下是十進制和二進制數字系統中從零到九的數字：

```md
| Base-10 | Base-2 |
| ------- | ------ |
|    0    |  0     |
|    1    |  1     |
|    2    |  10    |
|    3    |  11    |
|    4    |  100   |
|    5    |  101   |
|    6    |  110   |
|    7    |  111   |
|    8    |  1000  |
|    9    |  1001  |
```

請注意，二進制數是從左到右形成的，從左邊位值最高的數字到右邊位值最低的數字。 例如，二進制中的數字 `3` 是 `11`，或者兩位的數字是 `1`，個位的數字是 `1`。 然後對於數字 `4`，左邊包含一個表示四位的數字並設置爲 `1`，兩位爲 `0`，個位爲 `0`。

在 `decimalToBinary` 函數中，將數字 `10` 轉換爲二進制並將其 `return` 爲字符串。

# --hints--

你的 `decimalToBinary` 函數應該返回一個字符串。

```js
assert.isString(decimalToBinary());
```

你的 `decimalToBinary` 函數應返回長度爲 `4` 的字符串。

```js
assert.strictEqual(decimalToBinary().length, 4);
```

你的 `decimalToBinary` 函數應返回 `"1010"` 字符串。

```js
assert.strictEqual(decimalToBinary(), '1010');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Decimal to Binary Converter</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <h1>
      Decimal to Binary <br />
      Converter
    </h1>
    <section class="input-container">
      <label for="number-input">Enter a decimal number:</label>
      <input
        value=""
        type="number"
        name="decimal number input"
        id="number-input"
        class="number-input"
      />
      <button class="convert-btn" id="convert-btn">Convert</button>
    </section>
    <section class="output-container">
      <output id="result" for="number-input"></output>
      <h2>Call stack</h2>
      <div id="animation-container"></div>
    </section>
    <script src="script.js"></script>
  </body>
</html>
```

```css
*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

:root {
  --light-grey: #f5f6f7;
  --dark-blue: #1b1b32;
  --orange: #f1be32;
}

body {
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: Menlo, Consolas, Monaco, Liberation Mono, Lucida Console,
    monospace;
  font-size: 1.125rem;
  color: var(--light-grey);
  background-color: var(--dark-blue);
  padding: 0 4px;
}

h1 {
  font-size: 2.125rem;
  text-align: center;
  margin: 20px 0;
}

h2 {
  font-size: 1.5rem;
  text-align: center;
  margin: 20px 0;
}

.input-container {
  display: flex;
  flex-direction: column;
  gap: 10px;
  justify-content: center;
  align-items: center;
  width: clamp(320px, 50vw, 460px);
  margin: 10px auto;
}

.input-container label {
  white-space: nowrap;
  word-spacing: -6px;
}

.convert-btn {
  font-size: inherit;
  font-family: inherit;
  background-color: var(--orange);
  width: 100%;
  height: 2rem;
  padding: 0 6px;
  border: none;
  border-radius: 2px;
  cursor: pointer;
}

.number-input {
  font-size: inherit;
  padding: 0.3rem;
  width: 100%;
}

.output-container {
  margin-inline: auto;
  width: clamp(320px, 50vw, 460px);
}

#result {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2rem;
  text-align: center;
  min-height: 80px;
  margin-block-start: 20px;
  padding: 15px;
  border: 2px solid var(--orange);
  border-radius: 2px;
}

#animation-container {
  display: flex;
  flex-direction: column-reverse;
  justify-content: end;
  gap: 1rem;
  margin-block-end: 1rem;
  min-height: 40vh;
  border: 2px dashed var(--orange);
  padding: 1rem;
}

.animation-frame {
  font-family: -apple-system, BlinkMacSystemFont, avenir next, avenir, segoe ui,
    helvetica neue, helvetica, Cantarell, Ubuntu, roboto, noto, arial,
    sans-serif;
  padding: 15px 10px;
  border: 5px solid var(--orange);
  font-size: 1.2rem;
  text-align: center;
}

@media screen and (min-width: 36em) {
  body {
    font-size: 1rem;
  }

  .input-container {
    flex-direction: row;
    width: unset;
  }

  .number-input {
    width: unset;
  }
}
```

```js
const numberInput = document.getElementById("number-input");
const convertBtn = document.getElementById("convert-btn");
const result = document.getElementById("result");

const decimalToBinary = (input) => {
--fcc-editable-region--
  return "1";
--fcc-editable-region--
};

const checkUserInput = () => {
  if (
    !numberInput.value ||
    isNaN(parseInt(numberInput.value)) ||
    parseInt(numberInput.value) < 0
  ) {
    alert("Please provide a decimal number greater than or equal to 0");
    return;
  }

  decimalToBinary(parseInt(numberInput.value));
  numberInput.value = "";
};

convertBtn.addEventListener("click", checkUserInput);

numberInput.addEventListener("keydown", (e) => {
  if (e.key === "Enter") {
    checkUserInput();
  }
});
```
