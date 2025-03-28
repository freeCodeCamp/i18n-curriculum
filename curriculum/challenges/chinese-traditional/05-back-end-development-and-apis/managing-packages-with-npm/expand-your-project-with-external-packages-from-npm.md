---
id: 587d7fb4367417b2b2512c00
title: 使用 npm 的外部包擴展項目
challengeType: 2
forumTopicId: 301527
dashedName: expand-your-project-with-external-packages-from-npm
---

# --description--

One of the biggest reasons to use a package manager, is their powerful dependency management. Instead of manually having to make sure that you get all dependencies whenever you set up a project on a new computer, npm automatically installs everything for you. But how can npm know exactly what your project needs? Meet the `dependencies` section of your package.json file.

在這部分，你的項目需要按照下面這種格式來存儲依賴包：

```json
"dependencies": {
  "package-name": "version",
  "express": "4.14.0"
}

```

# --instructions--

將 `@freecodecamp/example` 包的版本 `1.1.0` 添加到 `package.json` 文件的 `dependencies` 字段。

**注意：** `@freecodecamp/example` 是一個用作學習工具的仿包。

# --hints--

`"dependencies"` 應包括 `"@freecodecamp/example"`。

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

`"@freecodecamp/example"` 版本應爲 `"1.1.0"`。

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^[\^\~]?1\.1\.0/,
        'Wrong version of "@freecodecamp/example" installed. It should be 1.1.0'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

