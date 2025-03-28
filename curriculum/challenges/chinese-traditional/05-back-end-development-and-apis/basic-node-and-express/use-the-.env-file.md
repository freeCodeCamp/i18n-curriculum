---
id: 587d7fb1367417b2b2512bf2
title: 使用 .env 文件
challengeType: 2
forumTopicId: 301521
dashedName: use-the--env-file
---

# --description--

The `.env` file is a hidden file that is used to pass environment variables to your application. This file is secret, no one but you can access it, and it can be used to store data that you want to keep private or hidden. For example, you can store API keys from external services or your database URI. You can also use it to store configuration options. By setting configuration options, you can change the behavior of your application, without the need to rewrite some code.

在應用程序中可以通過 `process.env.VAR_NAME` 訪問到環境變量。 `process.env` 對象是 Node 程序中的一個全局對象，可以給這個變量傳字符串。 習慣上，變量名全部大寫，單詞之間用下劃線分隔。 `.env` 是一個 shell 文件，因此不需要用給變量名和值加引號。 還有一點需要注意，當你給變量賦值時等號兩側不能有空格，例如：`VAR_NAME=value`。 通常來講，每一個變量定義會獨佔一行。

# --instructions--

添加一個環境變量作爲配置選項。

在項目根目錄創建一個 `.env` 文件，並存儲變量 `MESSAGE_STYLE=uppercase`。

然後，在你在上個挑戰中創建的 `/json` GET 路由處理程序中訪問 `process.env.MESSAGE_STYLE`，並且如果變量等於 `uppercase`，將響應對象的 `message` 轉換爲大寫。 響應對象應該是 `{"message": "Hello json"}` or `{"message": "HELLO JSON"}`，取決於 `MESSAGE_STYLE` 的值。 請注意，因爲我們的測試運行的方式，你必須閱讀路由處理器**裏面**（而不是外面）`process.env.MESSAGE_STYLE` 的值。

You will need to use the `dotenv` package. It loads environment variables from your `.env` file into `process.env`. The `dotenv` package has already been installed, and is in your project's `package.json` file. At the top of your `myApp.js` file, add `require('dotenv').config()` to load the environment variables.

# --hints--

端口 `/json` 響應的值，應該隨着環境變量 `MESSAGE_STYLE` 的變化而改變。

```js
  $.get(code + '/_api/use-env-vars').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'The response of "/json" does not change according to MESSAGE_STYLE'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

