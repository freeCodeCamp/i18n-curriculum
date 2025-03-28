---
id: 587d7fb4367417b2b2512bff
title: 给 package.json 添加版本号
challengeType: 2
forumTopicId: 301525
dashedName: add-a-version-to-your-package-json
---

# --description--

A `version` is one of the required fields of your package.json file. This field describes the current version of your project. 如下所示：

```json
"version": "1.2.0",
```

# --instructions--

给 package.json 文件添加项目的版本号（`version`）。

# --hints--

package.json 应该包含一个有效的 “version” 键

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.version, '"version" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

