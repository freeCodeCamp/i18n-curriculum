---
id: 587d7fb5367417b2b2512c02
title: 用波浪號維持依賴項的最新修訂號
challengeType: 2
forumTopicId: 301532
dashedName: use-the-tilde-character-to-always-use-the-latest-patch-version-of-a-dependency
---

# --description--

In the last challenge, you told npm to only include a specific version of a package. That’s a useful way to freeze your dependencies if you need to make sure that different parts of your project stay compatible with each other. But in most use cases, you don’t want to miss bug fixes since they often include important security patches and (hopefully) don’t break things in doing so.

可以在依賴項的版本號前加一個波浪號（`~`），以讓 npm 依賴項更新到最新的修訂版。 這裏有一個允許升級到任何 `1.3.x` 的例子。

```json
"package": "~1.3.8"
```

# --instructions--

在 package.json 文件中，你當前關於 npm 如何升級 `@freecodecamp/example` 的規則是使用特定版本（`1.2.13`）。 但現在，你想允許最新的 `1.2.x` 版本。

在依賴項中使用波浪號（`~`）字符作爲 `@freecodecamp/example` 版本的前綴，並允許 npm 將其更新爲任何新的*補丁*發佈。

**注意：** 原來的版本號不用更改。

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

`"@freecodecamp/example"` 版本應匹配 `"~1.2.13"`。

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^\~1\.2\.13/,
        'Wrong version of "@freecodecamp/example". It should be ~1.2.13'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

