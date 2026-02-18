---
id: bd7158d8c443edefaeb5bdff
title: 请求头解析器微服务
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

构建一个功能上类似于此的全栈 JavaScript 应用程序：<a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>。在此项目中，你将使用以下方法之一编写你的代码：

-   克隆 <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">这个 GitHub 仓库</a> 并在本地完成你的项目。
-   你可以选择任何网站构建工具完成该项目。 需要包含我们 GitHub 仓库的所有文件。

# --hints--

你应该提交你自己的项目，而不是示例的 URL。

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

向 `/api/whoami` 发送请求，返回一个 JSON 对象，这个JSON 对象应该含有存放 IP 地址的 `ipaddress` 键。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

向 `/api/whoami` 发送请求，返回一个 JSON 对象，这个 JSON 对象应该含有存放语言首选项的 `language` 键。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

向 `/api/whoami` 发送请求，返回一个 JSON 对象，这个 JSON 对象应该含有存放（发送请求的）软件的 `software` 键。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```

