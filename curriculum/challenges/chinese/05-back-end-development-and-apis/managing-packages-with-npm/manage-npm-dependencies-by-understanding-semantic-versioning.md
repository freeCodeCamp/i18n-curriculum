---
id: 587d7fb5367417b2b2512c01
title: 通过语义化版本来管理 npm 依赖关系
challengeType: 2
forumTopicId: 301529
dashedName: manage-npm-dependencies-by-understanding-semantic-versioning
---

# --description--

`Versions` of the npm packages in the dependencies section of your package.json file follow what’s called Semantic Versioning (SemVer), an industry standard for software versioning aiming to make it easier to manage dependencies. Libraries, frameworks or other tools published on npm should use SemVer in order to clearly communicate what kind of changes projects can expect if they update.

在使用外部依赖项（大多数情况都是这样）进行软件开发时，了解语义化版本会很有用。 这些数字保存着项目的偶然发生的破坏性改变，不会让人对项目昨天还正常，今天却无法运行而百思不解。 根据官网，这是语义化版本的工作方式：

```json
"package": "MAJOR.MINOR.PATCH"
```

当做了不兼容的 API 修改，应该增加主版本号（MAJOR）； 当新增了向下兼容的新功能时，应该增加次版本号（MINOR）； 当修复了向下兼容的 bug 时，应该增加修订号（PATCH）。 这意味着修订号是用来修复错误的，次版本号则是添加了新功能，但它们都没有破坏之前的功能。 主版本号（MAJOR）是添加了不兼容早期版本的更改。

# --instructions--

在 `package.json` 文件的依赖项部分，更改 `@freecodecamp/example` 的版本以匹配 MAJOR 版本为 1、MINOR 版本为 2 和 PATCH 版本为 13

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

`"@freecodecamp/example"` 版本应为 `"1.2.13"`。

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.equal(
        data.dependencies['@freecodecamp/example'],
        '1.2.13',
        'Wrong version of "@freecodecamp/example". It should be 1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
