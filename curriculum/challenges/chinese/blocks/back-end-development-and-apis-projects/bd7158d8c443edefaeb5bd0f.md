---
id: bd7158d8c443edefaeb5bd0f
title: 文件元数据微服务
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

构建一个功能上类似于此的全栈 JavaScript 应用程序：<a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>。在此项目中，你将使用以下方法之一编写你的代码：

-   克隆<a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">这个 GitHub 仓库</a>，并在本地完成你的项目。
-   你可以选择任何网站构建工具完成该项目。 需要包含我们 GitHub 仓库的所有文件。

# --instructions--

** 提示：**可以使用 `multer` npm 包来处理上传文件。

# --hints--

你应该提交你自己的项目，而不是示例的 URL。

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

你可以提交一个包含上传文件的表单。

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

表单文件输入字段的 `name` 属性设置成 `upfile`。

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

当你提交一个文件时，在 JSON 响应中收到文件的 `name`、`type` 和 `size`，以 bytes（字节）为单位。

```js
  const boundary = 'fccBoundary1234567890';
  const head =
    `--${boundary}\r\n` +
    'Content-Disposition: form-data; name="upfile"; filename="icon"\r\n' +
    'Content-Type: image/png\r\n\r\n';
  const body = new Blob([head, new Uint8Array(70), `\r\n--${boundary}--\r\n`]);
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    headers: {
      'Content-Type': `multipart/form-data; boundary=${boundary}`
    },
    body
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```

