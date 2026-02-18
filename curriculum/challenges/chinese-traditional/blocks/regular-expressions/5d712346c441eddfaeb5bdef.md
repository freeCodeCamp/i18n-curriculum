---
id: 5d712346c441eddfaeb5bdef
title: 匹配所有數字
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

你已經學會了常見字串樣式（例如字母數字）的捷徑。另一個常見的樣式是只尋找數字或數字。

尋找數字字元的捷徑是 `\d`，其中的 `d` 是小寫。這與字元類別 `[0-9]` 相等，該類別尋找介於零到九之間的任一單一字元。

# --instructions--

使用縮寫字元類別 `\d` 來計算電影標題中有多少個數字。以文字書寫的數字（例如「six」而非 6）不計算在內。

# --hints--

你的正則表達式應該使用捷徑字元來匹配數字字元。

```js
assert(/\\d/.test(numRegex.source));
```

你的正規表達式應該使用全域的旗標。

```js
assert(numRegex.global);
```

你的正則表達式應該在字串 `9` 中找到 1 個數字。

```js
assert('9'.match(numRegex).length == 1);
```

你的正規表達式應該在字串 `Catch 22` 中找到 2 個數字。

```js
assert('Catch 22'.match(numRegex).length == 2);
```

你的正規表達式應該在字串 `101 Dalmatians` 中找到 3 個數字。

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

你的正規表達式在字串 `One, Two, Three` 中不應找到任何數字。

```js
assert('One, Two, Three'.match(numRegex) == null);
```

你的正規表達式應該在字串 `21 Jump Street` 中找到 2 個數字。

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

你的正規表達式應該在字串 `2001: A Space Odyssey` 中找到 4 個數字。

```js
assert('2001: A Space Odyssey'.match(numRegex).length == 4);
```

# --seed--

## --seed-contents--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /change/; // Change this line
let result = movieName.match(numRegex).length;
```

# --solutions--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;
```
