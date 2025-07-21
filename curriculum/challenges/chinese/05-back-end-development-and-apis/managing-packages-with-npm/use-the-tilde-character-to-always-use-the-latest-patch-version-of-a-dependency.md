---
id: 587d7fb5367417b2b2512c02
title: 用波浪号维持依赖项的最新修订号
challengeType: 2
forumTopicId: 301532
dashedName: use-the-tilde-character-to-always-use-the-latest-patch-version-of-a-dependency
---

# --description--

In the last challenge, you told npm to only include a specific version of a package. That’s a useful way to freeze your dependencies if you need to make sure that different parts of your project stay compatible with each other. But in most use cases, you don’t want to miss bug fixes since they often include important security patches and (hopefully) don’t break things in doing so.

可以在依赖项的版本号前加一个波浪号（`~`），以让 npm 依赖项更新到最新的修订版。 这里有一个允许升级到任何 `1.3.x` 的例子。

```json
"package": "~1.3.8"
```

# --instructions--

在 package.json 文件中，你当前关于 npm 如何升级 `@freecodecamp/example` 的规则是使用特定版本（`1.2.13`）。 但现在，你想允许最新的 `1.2.x` 版本。

在依赖项中使用波浪号（`~`）字符作为 `@freecodecamp/example` 版本的前缀，并允许 npm 将其更新为任何新的*补丁*发布。

**注意：** 原来的版本号不用更改。

# --hints--

`"dependencies"` 应包括 `"@freecodecamp/example"`。

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.property(
        data.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```

`"@freecodecamp/example"` 版本应匹配 `"~1.2.13"`。

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.match(
        data.dependencies['@freecodecamp/example'],
        /^\~1\.2\.13/,
        'Wrong version of "@freecodecamp/example". It should be ~1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
