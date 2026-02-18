---
id: bd7158d8c443edefaeb5bd0f
title: 檔案詮釋資料微服務
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

建置一個功能上類似於此的全端 JavaScript 應用程式：<a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>。進行此專案將需要你使用以下其中一種方法撰寫你的程式碼：

-   複製<a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>並在區域完成你的專案。
-   使用你選擇的網站建置工具來完成專案。務必將我們 GitHub 倉庫中的所有檔案納入其中。

# --instructions--

**提示：**你可以使用 `multer` npm 軟體包來控制代碼檔案上傳。

# --hints--

你應該提供你自己的專案，而不是範例 URL。

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

你可以提交包含檔案上傳的表單。

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

表單檔案輸入欄位的 `name` 屬性設定為 `upfile`。

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

當你提交一個檔案時，你會在 JSON 回應中收到該檔案的 `name`、`type` 和以位元組為單位的 `size`。

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```

