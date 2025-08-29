---
id: 587d824a367417b2b2512c44
title: 股票价格查看器
challengeType: 4
forumTopicId: 301572
dashedName: stock-price-checker
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://stock-price-checker.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker.freecodecamp.rocks/</a>.

由于所有可靠的股票价格 API 都需要一个 API 密钥，我们已经建立了一个解决方案。 使用 <a href="https://stock-price-checker-proxy.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://stock-price-checker-proxy.freecodecamp.rocks/</a> 获取最新的股票价格信息，而无需注册你自己的密钥。

可以采用下面的任意一种方式完成这个挑战：

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-stockchecker/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

1.  Set the `NODE_ENV` environment variable to `test`, without quotes
2.  在 `routes/api.js` 中完成项目，或者通过创建一个处理程序/控制器来完成项目
3.  添加安全功能到 `server.js`。
4.  在 `tests/2_functional-tests.js` 中创建所有的功能测试

**Note** Privacy Considerations: Due to the requirement that only 1 like per IP should be accepted, you will have to save IP addresses. It is important to remain compliant with data privacy laws such as the General Data Protection Regulation. One option is to get permission to save the user's data, but it is much simpler to anonymize it. For this challenge, remember to anonymize IP addresses before saving them to the database. If you need ideas on how to do this, you may choose to hash the data, truncate it, or set part of the IP address to 0.

在 `tests/2_functional-tests.js` 中编写下以下测试：

-   Viewing one stock: GET request to `/api/stock-prices/`
-   查看一个股票并关注它：发送 GET 请求到 `/api/stock-prices/`
-   查看同一只股票并再次发送关注：发送 GET 请求到 `/api/stock-prices/`
-   查看两只股票：发送 GET 请求到 `/api/stock-prices/`
-   查看两只股票并关注它：发送 GET 请求到 `/api/stock-prices/`

# --hints--

你可以提交你自己的项目，而不是示例的 URL。

```js
  assert(
    !/.*\/stock-price-checker\.freecodecamp\.rocks/.test(code)
  );
```

将内容安全策略设置为仅允许从服务器加载脚本和 CSS。

```js
async () => {
  const data = await fetch(code + '/_api/app-info');
  const parsed = await data.json();
  assert.isTrue(
    parsed.headers['content-security-policy'].includes("script-src 'self'")
  );
  assert.isTrue(
    parsed.headers['content-security-policy'].includes("style-src 'self'")
  );
};
```

你可以向 `/api/stock-prices` 发送一个 `GET` 请求，将纳斯达克股票代码赋值给 `stock` 查询参数。 返回的对象将包含一个名为 `stockData` 的属性。

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG'
  );
  const parsed = await data.json();
  assert.property(parsed, 'stockData');
};
```

`stockData` 属性包括字符串 `stock` 代码、数字 `price`，以及数字 `likes`。

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG'
  );
  const parsed = await data.json();
  const ticker = parsed.stockData;
  assert.typeOf(ticker.price, 'number');
  assert.typeOf(ticker.likes, 'number');
  assert.typeOf(ticker.stock, 'string');
};
```

你也可以用作为 `true`（布尔值）来传递 `like` 字段，让你的偏好添加到股票中。 每个 IP 应该只接受 1 个赞。

```js

```

如果你传递了两只股票，返回值将是一个包含这两只股票信息的数组。 它将会显示对于两个 `stockData` 对象的 `rel_likes`（两只股票所获得的赞同数的区别），而不是 `likes`。

```js
async () => {
  const data = await fetch(
    code + '/api/stock-prices?stock=GOOG&stock=MSFT'
  );
  const parsed = await data.json();
  const ticker = parsed.stockData;
  assert.typeOf(ticker, 'array');
  assert.property(ticker[0], 'rel_likes');
  assert.property(ticker[1], 'rel_likes');
};
```

所有 5 项功能测试都已完成并通过。

```js
async () => {
  const tests = await fetch(code + '/_api/get-tests');
  const parsed = await tests.json();
  assert.isTrue(parsed.length >= 5);
  parsed.forEach((test) => {
    assert.equal(test.state, 'passed');
  });
};
```

