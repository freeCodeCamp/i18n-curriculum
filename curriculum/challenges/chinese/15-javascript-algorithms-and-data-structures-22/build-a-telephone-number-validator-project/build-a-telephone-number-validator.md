---
id: 657bdcb9a322aae1eac38391
title: 创建电话号码验证器
challengeType: 14
forumTopicId: 16090
dashedName: build-a-telephone-number-validator
---

# --description--

在美国，电话号码的格式有很多种。 以下是一些美国电话号码有效格式的示例：

<blockquote>
1 555-555-5555<br>
1 (555) 555-5555<br>
1(555)555-5555<br>
1 555 555 5555<br>
5555555555<br>
555-555-5555<br>
(555)555-5555<br>
</blockquote>

注意区域代码是必需的。 此外，如果有国家代码，你必须确保国家代码为 `1`。

**目标：**构建一个功能上与 <a href="https://telephone-number-validator.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://telephone-number-validator.freecodecamp.rocks</a> 相似的应用程序。

**用户需求：**

1. 你应该有一个 `id` 为 `"user-input"` 的 `input` 元素
1. 你应该有一个 `id` 为 `"check-btn"` 的 `button` 元素
1. 你应该有一个 `id` 为 `"clear-btn"` 的 `button` 元素
1. 你应该有一个 `id` 为 `"results-div"` 的 `div`、`span` 或 `p` 元素
1. 当你点击 `#check-btn` 元素但没有给 `#user-input` 元素输入一个值时，会出现提示 `"Please provide a phone number"`
1. 当你点击 `#clear-btn` 元素时，`#results-div` 元素中的内容应被删除
1. 当 `#user-input` 元素包含 `1 555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 555-555-5555"`
1. 当 `#user-input` 元素包含 `1 (555) 555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 (555) 555-5555"`
1. 当 `#user-input` 元素包含 `5555555555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 5555555555"`
1. 当 `#user-input` 元素包含 `555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 555-555-5555"`
1. 当 `#user-input` 元素包含 `(555)555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: (555)555-5555"`
1. 当 `#user-input` 元素包含 `1(555)555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1(555)555-5555"`
1. 当 `#user-input` 元素包含 `555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 555-5555"`
1. 当 `#user-input` 元素包含 `5555555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 5555555"`
1. 当 `#user-input` 元素包含 `1 555)555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 1 555)555-5555"`
1. 当 `#user-input` 元素包含 `1 555 555 5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 555 555 5555"`
1. 当 `#user-input` 元素包含 `1 456 789 4444`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 456 789 4444"`
1. 当 `#user-input` 包含 `123**&!!asdf#`，并点击 `#check-btn` 元素时，`#results-div` 应该包含文本 `"Invalid US number: 123**&!!asdf#"`
1. 当 `#user-input` 元素包含 `55555555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 55555555"`
1. 当 `#user-input` 元素包含 `(6054756961)`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: (6054756961)"`
1. 当 `#user-input` 元素包含 `2 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2 (757) 622-7382"`
1. 当 `#user-input` 元素包含 `0 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 0 (757) 622-7382"`
1. 当 `#user-input` 元素包含 `-1 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: -1 (757) 622-7382"`
1. 当 `#user-input` 元素包含 `2 757 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2 757 622-7382"`
1. 当 `#user-input` 元素包含 `10 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 10 (757) 622-7382"`
1. 当 `#user-input` 元素包含 `27576227382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 27576227382"`
1. 当 `#user-input` 元素包含 `(275)76227382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: (275)76227382"`
1. 当 `#user-input` 元素包含 `2(757)6227382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2(757)6227382"`
1. 当 `#user-input` 元素包含 `2(757)622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2(757)622-7382"`
1. 当 `#user-input` 元素包含 `555)-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 555)-555-5555"`
1. 当 `#user-input` 元素包含 `(555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: (555-555-5555"`
1. 当 `#user-input` 包含 `(555)5(55?)-5555`，并点击 `#check-btn` 元素时，`#results-div` 应该包含文本 `"Invalid US number: (555)5(55?)-5555"`
1. 当 `#user-input` 元素包含 `55 55-55-555-5`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 55 55-55-555-5"`
1. 当 `#user-input` 元素包含 `11 555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 11 555-555-5555"`

完成用户需求并通过下面的所有测试来完成这个项目。 赋予它你的个人风格。 祝你编码愉快！

# --hints--

你应该有一个 `id` 为 `"user-input"` 的 `input` 元素。

```js
const el = document.getElementById('user-input');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'input');
```

你应该有一个 `id` 为 `"check-btn"` 的 `button` 元素。

```js
const el = document.getElementById('check-btn');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'button');
```

你应该有一个 `id` 为 `"clear-btn"` 的 `button` 元素。

```js
const el = document.getElementById('clear-btn');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'button');
```

你应该有一个 `id` 为 `"results-div"` 的 `div`、`span` 或 `p` 元素。

```js
const el = document.getElementById('results-div');
assert(['div', 'span', 'p'].includes(el?.nodeName?.toLowerCase()));
```

当你点击 `#check-btn` 元素但没有给 `#user-input` 元素输入一个值时，会出现提示 `"Please provide a phone number"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
let alertMessage;
window.alert = (message) => alertMessage = message; // Override alert and store message

userInput.value = '';
checkBtn.click();
assert.strictEqual(alertMessage.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'please provide a phone number');
```

当你点击 `#clear-btn` 元素时，`#results-div` 元素中的内容应被删除。

```js
const resultsDiv = document.getElementById('results-div');
const clearBtn = document.getElementById('clear-btn');

resultsDiv.innerHTML = `Testing testing 123
Ladies and gentlemen, we are floating in space.`;
clearBtn.click();
assert.isEmpty(resultsDiv.textContent);
```

当 `#user-input` 元素包含 `1 555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 555-555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '1 555-555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 1 555-555-5555');
```

当 `#user-input` 元素包含 `1 (555) 555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 (555) 555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '1 (555) 555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 1 (555) 555-5555');
```

当 `#user-input` 元素包含 `5555555555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 5555555555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '5555555555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 5555555555');
```

当 `#user-input` 元素包含 `555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 555-555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '555-555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 555-555-5555');
```

当 `#user-input` 元素包含 `(555)555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: (555)555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '(555)555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: (555)555-5555');
```

当 `#user-input` 元素包含 `1(555)555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1(555)555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '1(555)555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 1(555)555-5555');
```

当 `#user-input` 元素包含 `555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 555-5555');
```

当 `#user-input` 元素包含 `5555555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 5555555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '5555555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 5555555');
```

当 `#user-input` 元素包含 `1 555)555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 1 555)555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '1 555)555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 1 555)555-5555');
```

当 `#user-input` 元素包含 `1 555 555 5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 555 555 5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '1 555 555 5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 1 555 555 5555');
```

当 `#user-input` 元素包含 `1 456 789 4444`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Valid US number: 1 456 789 4444"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '1 456 789 4444';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'valid us number: 1 456 789 4444');
```

当 `#user-input` 包含 `123**&!!asdf#`，并点击 `#check-btn` 元素时，`#results-div` 应该包含文本 `"Invalid US number: 123**&!!asdf#"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '123**&!!asdf#';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 123**&!!asdf#');
```

当 `#user-input` 元素包含 `55555555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 55555555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '55555555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 55555555');
```

当 `#user-input` 元素包含 `(6054756961)`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: (6054756961)"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '(6054756961)';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: (6054756961)');
```

当 `#user-input` 元素包含 `2 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2 (757) 622-7382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '2 (757) 622-7382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 2 (757) 622-7382');
```

当 `#user-input` 元素包含 `0 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 0 (757) 622-7382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '0 (757) 622-7382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 0 (757) 622-7382');
```

当 `#user-input` 元素包含 `-1 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: -1 (757) 622-7382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '-1 (757) 622-7382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: -1 (757) 622-7382');
```

当 `#user-input` 元素包含 `2 757 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2 757 622-7382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '2 757 622-7382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 2 757 622-7382');
```

当 `#user-input` 元素包含 `10 (757) 622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 10 (757) 622-7382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '10 (757) 622-7382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 10 (757) 622-7382');
```

当 `#user-input` 元素包含 `27576227382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 27576227382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '27576227382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 27576227382');
```

当 `#user-input` 元素包含 `(275)76227382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: (275)76227382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '(275)76227382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: (275)76227382');
```

当 `#user-input` 元素包含 `2(757)6227382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2(757)6227382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '2(757)6227382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 2(757)6227382');
```

当 `#user-input` 元素包含 `2(757)622-7382`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 2(757)622-7382"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '2(757)622-7382';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 2(757)622-7382');
```

当 `#user-input` 元素包含 `555)-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 555)-555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '555)-555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 555)-555-5555');
```

当 `#user-input` 元素包含 `(555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: (555-555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '(555-555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: (555-555-5555');
```

当 `#user-input` 包含 `(555)5(55?)-5555`，并点击 `#check-btn` 元素时，`#results-div` 应该包含文本 `"Invalid US number: (555)5(55?)-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '(555)5(55?)-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: (555)5(55?)-5555');
```

当 `#user-input` 元素包含 `55 55-55-555-5`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 55 55-55-555-5"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '55 55-55-555-5';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 55 55-55-555-5');
```

当 `#user-input` 元素包含 `11 555-555-5555`，并点击 `#check-btn` 元素时，`#results-div` 元素应该包含文本 `"Invalid US number: 11 555-555-5555"`。

```js
const userInput = document.getElementById('user-input');
const checkBtn = document.getElementById('check-btn');
const resultsDiv = document.getElementById('results-div');

resultsDiv.innerHTML = '';
userInput.value = '11 555-555-5555';
userInput.dispatchEvent(new Event('change'));
checkBtn.click();
assert.strictEqual(resultsDiv.innerText.trim().toLowerCase(), 'invalid us number: 11 555-555-5555');
```

# --seed--

## --seed-contents--

```html

```

```css

```

```js

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="icon"
      type="image/png"
      href="https://cdn.freecodecamp.org/universal/favicons/favicon.ico"
    />
    <title>Telephone Number Validator</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <main>
      <img
        class="freecodecamp-logo"
        src="https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg"
        alt="freeCodeCamp Logo"
      />
      <h1>Telephone Number Validator</h1>
      <div class="phone-container">
        <div class="phone-background">
          <div class="phone-camera"></div>
        </div>
        <label for="user-input">Enter a Phone Number:</label>
        <input maxlength="20" type="text" id="user-input" value="" />
        <div id="results-div"></div>
        <div class="phone-footer">
          <button class="btn-styles" id="check-btn">Check</button>
          <button class="btn-styles" id="clear-btn">Clear</button>
        </div>
      </div>
    </main>
    <script src="script.js"></script>
  </body>
</html>
```

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

:root {
  --phone-colors: #dfdfe2;
  --center-text: center;
  --gray-00: #fff;
}

body {
  background-color: #3b3b4f;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  color: #0a0a23;
}

main {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 40px 10px;
}

.freecodecamp-logo {
  width: 100%;
  height: 30px;
  margin-bottom: 20px;
}

h1 {
  color: white;
  width: 100%;
  max-width: 480px;
  margin: 15px 0;
  text-align: var(--center-text);
}

.phone-container {
  position: relative;
  background-color: var(--phone-colors);
  width: 250px;
  height: 460px;
  margin: 30px auto;
  border-radius: 15px;
  border: 15px solid black;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.phone-background {
  background-color: black;
  width: 100%;
  height: 25px;
}

.phone-camera {
  background-color: var(--phone-colors);
  width: 10px;
  height: 10px;
  border-radius: 50%;
  margin: auto;
}

label {
  margin: 10px auto 5px;
}

#user-input {
  display: block;
  margin: 10px auto;
  padding: 5px;
  border: 1px solid black;
  border-radius: 10px;
  text-align: var(--center-text);
  width: 90%;
  height: 42px;
  font-size: 16px;
}

.phone-footer {
  background-color: black;
  width: 100%;
  height: 40px;
  position: absolute;
  bottom: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.btn-styles {
  cursor: pointer;
  width: 100px;
  margin: 10px;
  color: #0a0a23;
  font-size: 18px;
  background-color: #ffffff;
  background-image: linear-gradient(#ffffff, #928d86);
  border-color: #ffffff;
  border-width: 3px;
}

#results-div {
  overflow-y: auto;
  height: 265px;
  width: 100%;
}

.results-text {
  font-size: 1.2rem;
  padding: 5px;
  text-align: var(--center-text);
  margin: 10px 0;
}
```

```js
const userInput = document.getElementById("user-input");
const checkBtn = document.getElementById("check-btn");
const clearBtn = document.getElementById("clear-btn");
const resultsDiv = document.getElementById("results-div");

const checkValidNumber = (input) => {
  if (input === "") {
    alert("Please provide a phone number");
    return;
  }
  const countryCode = "^(1\\s?)?";
  const areaCode = "(\\([0-9]{3}\\)|[0-9]{3})";
  const spacesDashes = "[\\s\\-]?";
  const phoneNumber = "[0-9]{3}[\\s\\-]?[0-9]{4}$";
  const phoneRegex = new RegExp(
    `${countryCode}${areaCode}${spacesDashes}${phoneNumber}`,
  );

  const pTag = document.createElement("p");
  pTag.className = "results-text";
  phoneRegex.test(input)
    ? (pTag.style.color = "#00471b")
    : (pTag.style.color = "#4d3800");
  pTag.appendChild(
    document.createTextNode(
      `${phoneRegex.test(input) ? "Valid" : "Invalid"} US number: ${input}`,
    ),
  );
  resultsDiv.appendChild(pTag);
};

checkBtn.addEventListener("click", () => {
  checkValidNumber(userInput.value);
  userInput.value = "";
});

userInput.addEventListener("keydown", (e) => {
  if (e.key === "Enter") {
    checkValidNumber(userInput.value);
    userInput.value = "";
  }
});

clearBtn.addEventListener("click", () => {
  resultsDiv.textContent = "";
});
```
