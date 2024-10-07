---
id: 587d7fb5367417b2b2512c04
title: 從依賴項中刪除依賴包
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

但是，如果想要刪除不再需要的依賴包，該怎麼辦呢？ 可能已經猜到了——只需要從依賴項中刪除相應的鍵值對就行了。

同樣的方法也適用於刪除 package.json 中的其他字段。

# --instructions--

從依賴項中刪除 `@freecodecamp/example` 包。

**注意：**刪除依賴包後，確保逗號數量正確。

# --hints--

`"dependencies"` 不應包含 `"@freecodecamp/example"`。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.notProperty(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" still includes "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

