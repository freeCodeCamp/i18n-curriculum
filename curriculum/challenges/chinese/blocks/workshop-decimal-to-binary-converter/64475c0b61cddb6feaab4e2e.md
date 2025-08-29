---
id: 64475c0b61cddb6feaab4e2e
title: 步骤 13
challengeType: 0
dashedName: step-13
---

# --description--

现在，如果用户没有输入数字，或者在尝试将数字转换为二进制之前数字无效，你可以提醒用户。

在 `if` 语句的主体中，使用 `alert()` 方法显示文本 `"Please provide a decimal number greater than or equal to 0"`。

请注意，`alert()` 是浏览器中 `window` 对象上的方法，因此你可以使用 `window.alert()` 或 `alert()`。

# --hints--

你应该在 `checkUserInput` 内的 `if` 语句主体中调用 `alert()` 方法。

```js
assert.match(String(checkUserInput), /if\s*\(\s*.+\s*\)\s*\{\s*(window\s*.)?\s*alert\(/);
```

当 `#number-input` 元素中存在假值，并且调用 `checkUserInput()` 函数时，`alert()` 方法应显示文本 `"Please provide a decimal number greater than or equal to 0"`。

```js
const numberInput = document.getElementById("number-input");
let alertMessage;
window.alert = (message) => alertMessage = message; // Override alert and store message

numberInput.value = '';
checkUserInput();

assert.strictEqual(alertMessage?.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'please provide a decimal number greater than or equal to 0');
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

const checkUserInput = () => {
  if (
    !numberInput.value ||
    isNaN(parseInt(numberInput.value)) ||
    parseInt(numberInput.value) < 0
  ) {
    --fcc-editable-region--

    --fcc-editable-region--
  }

  console.log(numberInput.value);
};

convertBtn.addEventListener("click", checkUserInput);

numberInput.addEventListener("keydown", (e) => {
  if (e.key === "Enter") {
    checkUserInput();
  }
});
```
