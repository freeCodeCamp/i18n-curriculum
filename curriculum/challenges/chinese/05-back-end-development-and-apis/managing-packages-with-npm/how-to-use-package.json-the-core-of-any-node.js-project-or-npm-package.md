---
id: 587d7fb3367417b2b2512bfb
title: '如何使用 package.json ——所有 Node.js 项目或 npm 包的核心'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

你可以采用下面的任意一种编写代码的方式来完成这些挑战：

- 克隆<a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">这个 GitHub 仓库</a>，并在本地完成这些挑战。
- 使用<a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">我们的 Gitpod 初始项目</a>来完成这些挑战。
- 使用你选择的网站生成器来完成项目。 需要包含我们 GitHub 仓库的所有文件。

`package.json` 文件是所有 Node.js 项目和 npm 包的枢纽， 它存储有关你的项目的信息。 它由单个 JSON 对象组成，并以键值对的形式存储项目信息， 只有两个必需的字段：`name` 和 `version`，但提供附加信息是一个好习惯。

你可以使用 `npm init` 命令从终端创建 `package.json` 文件。 这将运行一个有引导的设置。 使用带有 `-y` 标志的 `npm init` 将生成文件，而无需询问任何问题，`npm init -y`。

如果你查看项目的文件树，那么可以在文件树的最外层找到 `package.json`。 在接下来的几个挑战中你将完善这个文件。

在这个文件中最常见的信息之一是 `author` 字段， 它说明了项目的创建者，可以包含一个带有联系人信息或其他信息的字符串或对象。 对于较大的项目，建议使用对象；但是在我们的项目中，一个简单的字符串就够了，比如下面的例子：

```json
"author": "Jane Doe",
```

# --instructions--

在 `package.json` 文件中加入你的名字作为项目的 `author`。

**注意：**你正在写 JSON，所有的字段名必须用双引号（"）包裹，也必须用逗号（,）分割。

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

