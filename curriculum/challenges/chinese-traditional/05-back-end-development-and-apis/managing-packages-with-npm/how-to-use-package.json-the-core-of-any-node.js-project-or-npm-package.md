---
id: 587d7fb3367417b2b2512bfb
title: '如何使用 package.json ——所有 Node.js 項目或 npm 包的核心'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

你可以採用下面的任意一種編寫代碼的方式來完成這些挑戰：

- 克隆<a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>，並在本地完成這些挑戰。
- 使用<a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">我們的 Gitpod 初始項目</a>來完成這些挑戰。
- 使用你選擇的網站生成器來完成項目。 需要包含我們 GitHub 倉庫的所有文件。

`package.json` 文件是所有 Node.js 項目和 npm 包的樞紐， 它存儲有關你的項目的信息。 它由單個 JSON 對象組成，並以鍵值對的形式存儲項目信息， 只有兩個必需的字段：`name` 和 `version`，但提供附加信息是一個好習慣。

你可以使用 `npm init` 命令從終端創建 `package.json` 文件。 這將運行一個有引導的設置。 使用帶有 `-y` 標誌的 `npm init` 將生成文件，而無需詢問任何問題，`npm init -y`。

如果你查看項目的文件樹，那麼可以在文件樹的最外層找到 `package.json`。 在接下來的幾個挑戰中你將完善這個文件。

在這個文件中最常見的信息之一是 `author` 字段， 它說明了項目的創建者，可以包含一個帶有聯繫人信息或其他信息的字符串或對象。 對於較大的項目，建議使用對象；但是在我們的項目中，一個簡單的字符串就夠了，比如下面的例子：

```json
"author": "Jane Doe",
```

# --instructions--

在 `package.json` 文件中加入你的名字作爲項目的 `author`。

**注意：**你正在寫 JSON，所有的字段名必須用雙引號（"）包裹，也必須用逗號（,）分割。

如果你正在使用 Gitpod，請確保應用程序正在運行、預覽窗口已打開。 複製預覽窗口的 URL 並粘貼到下面的解決方案鏈接輸入框中。

# --hints--

`package.json` 應該有一個有效的 “author” 鍵。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.author, '"author" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

