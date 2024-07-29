---
id: 587d7fb0367417b2b2512bed
title: 認識 Node 的控制檯
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

你可以採用下面的任意一種編寫代碼的方式來完成這些挑戰：

- 克隆<a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>，並在本地完成這些挑戰。
- 使用<a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">我們的 Gitpod 初始項目</a>來完成這些挑戰。
- 使用你選擇的網站生成器來完成項目。 需要包含我們 GitHub 倉庫的所有文件。

在開發過程中，能夠隨時看到代碼的運行結果是非常重要的。

Node 只是一個 JavaScript 環境。 與客戶端 JavaScript 一樣，你可以使用控制檯顯示有用的調試信息。 在你的本地計算機上，你可以在終端中看到控制檯輸出。 在 Gitpod，默認情況下在編輯器底部打開了終端。

我們建議在做這些挑戰題時保持終端打開的狀態。 通過閱讀終端的輸出，你可以看到可能發生的任何錯誤。

更改文件後必須重新啓動服務器。

你可以使用 `Ctrl + C` 從終端停止服務器，然後直接使用 Node（`node mainEntryFile.js`）或使用 `package.json` 文件中的運行腳本 `npm run` 啓動服務器。

例如，可以使用 `npm run start` 在終端運行 `"start": "node server.js"` 腳本。

要實現保存文件時服務器自動重啓，你可以將 Node 的 `--watch` 標誌添加到你的啓動腳本 `"start": "node --watch server.js"`，或者你可以安裝一個 npm 包，例如 `nodemon`。 我們將把這作爲一項練習留給你。

# --instructions--

修改 `myApp.js` 文件，在控制檯打印出 “Hello World”。

# --hints--

控制檯應該輸出 `"Hello World"`。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/hello-console').then(
    (data) => {
      assert.isTrue(data.passed, '"Hello World" is not in the server console');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

