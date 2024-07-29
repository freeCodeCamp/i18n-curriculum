---
id: 587d7fb0367417b2b2512bed
title: 认识 Node 的控制台
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

你可以采用下面的任意一种编写代码的方式来完成这些挑战：

- 克隆<a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">这个 GitHub 仓库</a>，并在本地完成这些挑战。
- 使用<a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">我们的 Gitpod 初始项目</a>来完成这些挑战。
- 使用你选择的网站生成器来完成项目。 需要包含我们 GitHub 仓库的所有文件。

在开发过程中，能够随时看到代码的运行结果是非常重要的。

Node 只是一个 JavaScript 环境。 与客户端 JavaScript 一样，你可以使用控制台显示有用的调试信息。 在你的本地计算机上，你可以在终端中看到控制台输出。 在 Gitpod，默认情况下在编辑器底部打开了终端。

我们建议在做这些挑战题时保持终端打开的状态。 通过阅读终端的输出，你可以看到可能发生的任何错误。

更改文件后必须重新启动服务器。

你可以使用 `Ctrl + C` 从终端停止服务器，然后直接使用 Node（`node mainEntryFile.js`）或使用 `package.json` 文件中的运行脚本 `npm run` 启动服务器。

例如，可以使用 `npm run start` 在终端运行 `"start": "node server.js"` 脚本。

要实现保存文件时服务器自动重启，你可以将 Node 的 `--watch` 标志添加到你的启动脚本 `"start": "node --watch server.js"`，或者你可以安装一个 npm 包，例如 `nodemon`。 我们将把这作为一项练习留给你。

# --instructions--

修改 `myApp.js` 文件，在控制台打印出 “Hello World”。

# --hints--

控制台应该输出 `"Hello World"`。

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

