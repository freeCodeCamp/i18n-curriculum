---
id: 66edc31c44f1b9c1d5c5ebca
title: JavaScript 字符串测验
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

`includes()` 方法的返回值是什么？

#### --distractors--

如果在字符串中找到子字符串，该方法返回该字符串。 否则，返回 `undefined`。

---

如果在字符串中找到子字符串，该方法返回 `true`。 否则，将其返回空字符串。

---

如果在字符串中找到子字符串，该方法返回该字符串。 否则，返回 `null`。

#### --answer--

如果在字符串中找到子字符串，该方法返回 `true`。 否则，返回 `false`。

### --question--

#### --text--

哪个选项演示了字符串插值？

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

``Hello, {user}!``

#### --answer--

``Hello, ${user}!``

### --question--

#### --text--

以下哪个选项是换行符？

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

关于字符串，以下哪种说法是正确的？

#### --distractors--

字符串是可变的，创建后可更改。

---

字符串是非原始数据类型。

---

只能使用单引号创建字符串。

#### --answer--

字符串是不可变的。

### --question--

#### --text--

ASCII 代表什么？

#### --distractors--

美国互联网信息标准代码

---

高级的系统化代码用于内部交换

---

内部信息的自动标准代码

#### --answer--

美国信息交换标准代码

### --question--

#### --text--

以下哪种方法提取字符串的一部分并返回新字符串？

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

`prompt()` 方法的目的是什么？

#### --distractors--

在控制台中显示一条信息。

---

显示一个包含一条信息的提示框。

---

显示一个带有信息的确认框。

#### --answer--

显示一个等待用户输入的对话框。

### --question--

#### --text--

以下哪项是访问字符串第三个字符的正确方式？

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

如何获取字符串 `"hello"` 中第一个字符的 ASCII 值？

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

使用哪种方法可以获得与 ASCII 值相对应的字符？

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

以下哪个 `indexOf` 示例会在控制台中记录 `-1`？

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

如何检查字符串 `"JavaScript"` 是否包含 `"Script"`？

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

以下哪项可以从字符串 `"JavaScript"` 中提取子字符串 `"Script"`？

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

如何将字符串 `"JavaScript"` 转换为大写字母？

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

如何将字符串 `"JavaScript"` 转换为小写字母？

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

以下哪项会将 `"I love dogs"` 字符串中的 `"dogs"` 替换为 `"cats"`？

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

哪种方法用于将字符串重复特定次数？

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

以下代码会返回什么结果：`"abc".repeat(3)`？

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

会出现错误。

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

哪种方法可以删除字符串首尾的空白？

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

以下哪项是转义引号的正确语法？

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```

