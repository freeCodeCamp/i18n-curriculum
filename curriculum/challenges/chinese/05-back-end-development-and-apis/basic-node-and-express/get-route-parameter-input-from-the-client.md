---
id: 587d7fb2367417b2b2512bf5
title: 从客户端获取输入的路由参数
challengeType: 2
forumTopicId: 301513
dashedName: get-route-parameter-input-from-the-client
---

# --description--

When building an API, we have to allow users to communicate to us what they want to get from our service. For example, if the client is requesting information about a user stored in the database, they need a way to let us know which user they're interested in. One possible way to achieve this result is by using route parameters. Route parameters are named segments of the URL, delimited by slashes (/). Each segment captures the value of the part of the URL which matches its position. The captured values can be found in the `req.params` object.

<blockquote>路由地址：'/user/:userId/book/:bookId'<br> 实际请求 URL：'/user/546/book/6754'<br> req.params：{userId: '546', bookId: '6754'}</blockquote>

# --instructions--

在路由 `GET /:word/echo` 中构建一个响应服务， 响应一个采用 `{echo: word}` 结构的 JSON 对象。 可以在 `req.params.word` 中找到要重复的单词， 可以在浏览器的地址栏测试你的路由，访问一些匹配的路由，比如：`your-app-rootpath/freecodecamp/echo`。

# --hints--

测试 1：你的 echo 服务应该正确地重复单词

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

测试 2：你的 echo 服务应该正确地重复单词

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

