---
id: 587d7fb0367417b2b2512bed
title: 認識 Node 的控制檯
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete these challenges. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
- 使用你選擇的網站生成器來完成項目。 需要包含我們 GitHub 倉庫的所有文件。

During the development process, it is important to be able to check what’s going on in your code.

Node is just a JavaScript environment. Like client side JavaScript, you can use the console to display useful debug information. On your local machine, you would see console output in a terminal. 在 Gitpod，默認情況下在編輯器底部打開了終端。

We recommend to keep the terminal open while working at these challenges. By reading the output in the terminal, you can see any errors that may occur.

更改文件後必須重新啓動服務器。

你可以使用 `Ctrl + C` 從終端停止服務器，然後直接使用 Node（`node mainEntryFile.js`）或使用 `package.json` 文件中的運行腳本 `npm run` 啓動服務器。

例如，可以使用 `npm run start` 在終端運行 `"start": "node server.js"` 腳本。

要實現保存文件時服務器自動重啓，你可以將 Node 的 `--watch` 標誌添加到你的啓動腳本 `"start": "node --watch server.js"`，或者你可以安裝一個 npm 包，例如 `nodemon`。 我們將把這作爲一項練習留給你。

# --instructions--

Modify the `myApp.js` file to log "Hello World" to the console.

# --hints--

`"Hello World"` should be in the console

```js
  $.get(code + '/_api/hello-console').then(
    (data) => {
      assert.isTrue(data.passed, '"Hello World" is not in the server console');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

