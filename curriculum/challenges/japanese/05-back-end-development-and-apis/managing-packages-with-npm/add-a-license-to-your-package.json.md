---
id: 587d7fb4367417b2b2512bfe
title: package.json にライセンスを追加する
challengeType: 2
forumTopicId: 301523
dashedName: add-a-license-to-your-package-json
---

# --description--

`license` フィールドでは、プロジェクトに対して許可することをユーザーに知らせます。

オープンソース プロジェクトのライセンスは MIT や BSD などが一般的です。 ライセンス情報は必須ではありません。ほとんどの国の著作権法では、特に断りがない限り、著作者に所有権が与えられます。 しかし、ユーザーができることとできないことを常に明確に記述しておくことを推奨します。 ライセンスフィールドの例を次に示します。

```json
"license": "MIT",
```

# --instructions--

プロジェクトの package.json ファイル内の `license` フィールドを適切に記述してください。

# --hints--

package.json で、有効な「license」キーを記述する必要があります。

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.license, '"license" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
