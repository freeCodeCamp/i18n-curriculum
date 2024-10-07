---
id: 587d7fb2367417b2b2512bf5
title: 從客戶端獲取輸入的路由參數
challengeType: 2
forumTopicId: 301513
dashedName: get-route-parameter-input-from-the-client
---

# --description--

When building an API, we have to allow users to communicate to us what they want to get from our service. For example, if the client is requesting information about a user stored in the database, they need a way to let us know which user they're interested in. One possible way to achieve this result is by using route parameters. Route parameters are named segments of the URL, delimited by slashes (/). Each segment captures the value of the part of the URL which matches its position. The captured values can be found in the `req.params` object.

<blockquote>路由地址：'/user/:userId/book/:bookId'<br> 實際請求 URL：'/user/546/book/6754'<br> req.params：{userId: '546', bookId: '6754'}</blockquote>

# --instructions--

在路由 `GET /:word/echo` 中構建一個響應服務， 響應一個採用 `{echo: word}` 結構的 JSON 對象。 可以在 `req.params.word` 中找到要重複的單詞， 可以在瀏覽器的地址欄測試你的路由，訪問一些匹配的路由，比如：`your-app-rootpath/freecodecamp/echo`。

# --hints--

測試 1：你的 echo 服務應該正確地重複單詞

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/eChOtEsT/echo').then(
    (data) => {
      assert.equal(
        data.echo,
        'eChOtEsT',
        'Test 1: the echo server is not working as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

測試 2：你的 echo 服務應該正確地重複單詞

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/ech0-t3st/echo').then(
    (data) => {
      assert.equal(
        data.echo,
        'ech0-t3st',
        'Test 2: the echo server is not working as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

