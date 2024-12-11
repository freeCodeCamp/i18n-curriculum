---
id: 587d7fb3367417b2b2512bfb
title: '如何使用 package.json ——所有 Node.js 项目或 npm 包的核心'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete these challenges. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
- 使用你选择的网站生成器来完成项目。 需要包含我们 GitHub 仓库的所有文件。

The `package.json` file is the center of any Node.js project or npm package. 它存储有关你的项目的信息。 It consists of a single JSON object where information is stored in key-value pairs. 只有两个必需的字段：`name` 和 `version`，但提供附加信息是一个好习惯。

你可以使用 `npm init` 命令从终端创建 `package.json` 文件。 这将运行一个有引导的设置。 使用带有 `-y` 标志的 `npm init` 将生成文件，而无需询问任何问题，`npm init -y`。

If you look at the file tree of your project, you will find the `package.json` file on the top level of the tree. 在接下来的几个挑战中将完善这个文件。

在这个文件中最常见的信息之一是 `author` 字段， 它说明了项目的创建者，它可以是字符串，也可以是带有联系人详细信息的对象。 对于较大的项目，建议使用对象；但是在我们的项目中，一个简单的字符串就够了，比如下面的例子：

```json
"author": "Jane Doe",
```

# --instructions--

Add your name as the `author` of the project in the `package.json` file.

**注意：** 正在修改的是一个 JSON，所有的字段名必须用双引号（"）包裹，也必须用逗号（,）分割。

如果你正在使用 Gitpod，请确保应用程序正在运行、预览窗口已打开。 复制预览窗口的 URL 并粘贴到下面的解决方案链接输入框中。

# --hints--

`package.json` 应该有一个有效的 “author” 键。

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

