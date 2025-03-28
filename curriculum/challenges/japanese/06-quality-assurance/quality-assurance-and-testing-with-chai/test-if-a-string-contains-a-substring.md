---
id: 587d824d367417b2b2512c53
title: 文字列に部分文字列が含まれているかどうかをテストする
challengeType: 2
forumTopicId: 301597
dashedName: test-if-a-string-contains-a-substring
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. 質問などの際に <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">Gitpod ワークスペースを共有する方法はこちらを参照</a>してください。

`include()` と `notInclude()` は、文字列でも動作します！ `include()` は、実際の文字列が期待される部分文字列を含んでいることをアサートします。

# --instructions--

Within `tests/1_unit-tests.js` under the test labeled `#14` in the `Strings` suite, change each `assert` to either `assert.include` or `assert.notInclude` to make the test pass (should evaluate to `true`). アサートに渡された引数を変更しないでください。

# --hints--

すべてのテストが成功する必要があります。

```js
  $.get(code + '/_api/get-tests?type=unit&n=13').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

最初のアサーションに対して、正しいメソッドを選ぶ必要があります - `include` もしくは `notInclude` です。

```js
  $.get(code + '/_api/get-tests?type=unit&n=13').then(
    (data) => {
      assert.equal(
        data.assertions[0].method,
        'include',
        "'Arrow' contains 'row'..."
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

2 番目のアサーションに対して、正しいメソッドを選ぶ必要があります - `include` もしくは `notInclude` です。

```js
  $.get(code + '/_api/get-tests?type=unit&n=13').then(
    (data) => {
      assert.equal(
        data.assertions[1].method,
        'notInclude',
        "... a 'dart' doesn't contain a 'queue'"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

