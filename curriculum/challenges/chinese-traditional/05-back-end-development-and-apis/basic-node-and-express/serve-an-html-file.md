---
id: 587d7fb0367417b2b2512bef
title: 提供 HTML 文件服務
challengeType: 2
forumTopicId: 301516
dashedName: serve-an-html-file
---

# --description--

You can respond to requests with a file using the `res.sendFile(path)` method. You can put it inside the `app.get('/', ...)` route handler. Behind the scenes, this method will set the appropriate headers to instruct your browser on how to handle the file you want to send, according to its type. Then it will read and send the file. This method needs an absolute file path. We recommend you to use the Node global variable `__dirname` to calculate the path like this:

```js
absolutePath = __dirname + '/relativePath/file.ext'
```

# --instructions--

發送文件 `/views/index.html` 作爲 `/` 的 GET 請求的響應。 如果實時查看應用，你會看到一個大的 HTML 標題（以及我們稍後將使用的表單……），目前它們還沒有任何樣式。

**注意：** 你可以編輯上一個挑戰的解題代碼，或者創建一個新的代碼片段。 如果你創建一個新的代碼片段，請記住 Express 會從上到下匹配路由，並執行第一個匹配的處理程序， 你必須註釋掉前面的代碼，否則服務器還是響應之前的字符串。

# --hints--

應用應該響應 views/index.html 文件

```js
(getUserInput) =>
  $.get(getUserInput('url')).then(
    (data) => {
      assert.match(
        data,
        /<h1>.*<\/h1>/,
        'Your app does not serve the expected HTML'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

