---
id: 587d7fb2367417b2b2512bf8
title: 從 POST 請求中獲取數據
challengeType: 2
forumTopicId: 301511
dashedName: get-data-from-post-requests
---

# --description--

Mount a POST handler at the path `/name`. It’s the same path as before. We have prepared a form in the html frontpage. It will submit the same data of exercise 10 (Query string). If the body-parser is configured correctly, you should find the parameters in the object `req.body`. Have a look at the usual library example:

<blockquote>路由：POST '/library'<br>URL 編碼的請求正文：userId=546&#x26;bookId=6754<br>req.body：{userId: '546', bookId: '6754'}</blockquote>

響應和前面一樣的 JSON 對象 `{name: 'firstname lastname'}`。 你可以使用首頁應用提供的 html 表單，來測試你的 API 是否正常工作。

提示：除了 GET 和 POST，還有其他幾種 http 方法。 按照慣例，http 動詞和在服務端執行的某種操作之間有對應關係， 這種對應關係通常如下：

POST（有時候是 PUT）- 使用請求發送信息，以創建新資源；

GET - 讀取不用修改的已存在的資源；

PUT 或者 PATCH（有時候是 POST）- 發送數據，以更新資源；

DELETE - 刪除資源。

還有其他兩種方法常用於與服務進行交互。 Except for GET, all the other methods listed above can have a payload (i.e. the data into the request body). 這些方法也可以使用 body-parser 中間件。

# --hints--

測試 1：你的 API 接口應該使用正確的名字來響應

```js
  $.post(code + '/name', { first: 'Mick', last: 'Jagger' }).then(
    (data) => {
      assert.equal(
        data.name,
        'Mick Jagger',
        'Test 1: "POST /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

測試 2：你的 API 接口應該使用正確的名字來響應

```js
  $.post(code + '/name', {
    first: 'Keith',
    last: 'Richards'
  }).then(
    (data) => {
      assert.equal(
        data.name,
        'Keith Richards',
        'Test 2: "POST /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

