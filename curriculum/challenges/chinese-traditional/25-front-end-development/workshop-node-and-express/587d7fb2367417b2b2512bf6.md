---
id: 587d7fb2367417b2b2512bf6
title: 從客戶端獲取輸入的查詢參數
challengeType: 2
forumTopicId: 301512
dashedName: get-query-parameter-input-from-the-client
---

# --description--

Another common way to get input from the client is by encoding the data after the route path, using a query string. The query string is delimited by a question mark (?), and includes field=value couples. Each couple is separated by an ampersand (&). Express can parse the data from the query string, and populate the object `req.query`. Some characters, like the percent (%), cannot be in URLs and have to be encoded in a different format before you can send them. If you use the API from JavaScript, you can use specific methods to encode/decode these characters.

<blockquote>路由地址：'/library'<br> 實際請求 URL：'/library?userId=546&#x26;bookId=6754'<br>req.query：{userId: '546', bookId: '6754'}</blockquote>

# --instructions--

構建一個 API 接口，使用路由掛載在 `GET /name` 上， 使用一個 JSON 文件來響應，它的結構是這樣的：`{ name: 'firstname lastname'}`， 名字（first name）和姓氏（last name）參數應該編碼在查詢參數中，例如：`?first=firstname&last=lastname`。

**注意：** 在後面的練習中，我們將向相同的路由路徑 `/name` 發送 POST 請求來接收數據。 如果願意，可以使用`app.route(path).get(handler).post(handler)`這中寫法， 這種語法允許在同一路徑路由上鍊式調用不同的請求方法， 可以節省一點打字時間，也可以讓代碼看起來更清晰。

# --hints--

測試一：當 `/name` 被調用爲 `?first=Mick&last=Jagger` 時，你的 API 端點應該響應爲 `{ "name": "Mick Jagger" }`。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?first=Mick&last=Jagger').then(
    (data) => {
      assert.equal(
        data.name,
        'Mick Jagger',
        'Test 1: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

測試二：當 `/name` 被調用爲 `?first=Keith&last=Richards` 時，你的 API 端點應該響應爲 `{ "name": "Keith Richards" }`。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?last=Richards&first=Keith').then(
    (data) => {
      assert.equal(
        data.name,
        'Keith Richards',
        'Test 2: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

