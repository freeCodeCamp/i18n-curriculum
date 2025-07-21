---
id: 587d7fb4367417b2b2512bff
title: 給 package.json 添加版本號
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

給 package.json 文件添加項目的版本號（`version`）。

# --hints--

package.json 應該包含一個有效的 “version” 鍵

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.version, '"version" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
