---
id: 587d7fb1367417b2b2512bf3
title: 實現一個根級的請求記錄中間件
challengeType: 2
forumTopicId: 301514
dashedName: implement-a-root-level-request-logger-middleware
---

# --description--

Earlier, you were introduced to the `express.static()` middleware function. Now it’s time to see what middleware is, in more detail. Middleware functions are functions that take 3 arguments: the request object, the response object, and the next function in the application’s request-response cycle. These functions execute some code that can have side effects on the app, and usually add information to the request or response objects. They can also end the cycle by sending a response when some condition is met. If they don’t send the response when they are done, they start the execution of the next function in the stack. This triggers calling the 3rd argument, `next()`.

請看以下示例：

```js
function(req, res, next) {
  console.log("I'm a middleware...");
  next();
}
```

假設在某個路由上安裝了這個中間件函數， 當一個請求與路由匹配時，它會顯示字符串“I’m a middleware…”，然後它執行堆棧中的下一個函數。 在這個練習中，我們將構建根級中間件。 正如我們在挑戰 4 中看到的，要在根層級安裝中間件函數，我們可以使用 `app.use(<mware-function>)` 方法。 在這種情況下，該函數將對所有請求執行，但也可以設置更具體的條件來執行， 例如，如果你希望某個函數只針對 POST 請求執行，可以使用 `app.post(<mware-function>)` 方法。 所有的 HTTP 動詞（GET、DELETE、PUT……）都存在類似的方法。

# --instructions--

構建一個簡單的日誌記錄器。 對於每個請求，它應該在控制檯中打印一個採用以下格式的字符串：`method path - ip`， 例如：`GET /json - ::ffff:127.0.0.1`。 注意 `method` 和 `path` 之間有一個空格，並且 `path` 和 `ip` 中間的破折號的兩邊都有空格。 可以使用 `req.method`、`req.path` 和 `req.ip` 從請求對象中分別獲取請求方法（http 動詞）、路由相對路徑和請求者的 ip 信息。 當你完成時，記得要調用 `next()`，否則服務器將一直處於掛起狀態。 請確保“Logs”是打開的，觀察一下當一些請求到達時會發生什麼事情。

**注意：** Express 按照函數在代碼中出現的順序來執行， 中間件也是如此。 如果你想讓中間件函數適用於所有路由，那麼應該在路由之前配置好中間件。

# --hints--

應該激活根級記錄器中間件

```js
  $.get(code + '/_api/root-middleware-logger').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'root-level logger is not working as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

