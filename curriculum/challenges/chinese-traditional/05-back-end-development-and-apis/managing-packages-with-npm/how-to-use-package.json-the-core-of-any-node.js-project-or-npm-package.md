---
id: 587d7fb3367417b2b2512bfb
title: '如何使用 package.json ——所有 Node.js 項目或 npm 包的核心'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- 使用你選擇的網站生成器來完成項目。 需要包含我們 GitHub 倉庫的所有文件。

The `package.json` file is the center of any Node.js project or npm package. 它存儲有關你的項目的信息。 It consists of a single JSON object where information is stored in key-value pairs. 只有兩個必需的字段：`name` 和 `version`，但提供附加信息是一個好習慣。

你可以使用 `npm init` 命令從終端創建 `package.json` 文件。 這將運行一個有引導的設置。 使用帶有 `-y` 標誌的 `npm init` 將生成文件，而無需詢問任何問題，`npm init -y`。

If you look at the file tree of your project, you will find the `package.json` file on the top level of the tree. 在接下來的幾個挑戰中將完善這個文件。

在這個文件中最常見的信息之一是 `author` 字段， 它說明了項目的創建者，它可以是字符串，也可以是帶有聯繫人詳細信息的對象。 對於較大的項目，建議使用對象；但是在我們的項目中，一個簡單的字符串就夠了，比如下面的例子：

```json
"author": "Jane Doe",
```

# --instructions--

Add your name as the `author` of the project in the `package.json` file.

**注意：** 正在修改的是一個 JSON，所有的字段名必須用雙引號（"）包裹，也必須用逗號（,）分割。

# --hints--

`package.json` 應該有一個有效的 “author” 鍵。

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.author, '"author" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
