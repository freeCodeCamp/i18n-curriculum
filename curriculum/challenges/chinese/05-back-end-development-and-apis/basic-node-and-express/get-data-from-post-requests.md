---
id: 587d7fb2367417b2b2512bf8
title: 从 POST 请求中获取数据
challengeType: 2
forumTopicId: 301511
dashedName: get-data-from-post-requests
---

# --description--

Mount a POST handler at the path `/name`. It’s the same path as before. We have prepared a form in the html frontpage. It will submit the same data of exercise 10 (Query string). If the body-parser is configured correctly, you should find the parameters in the object `req.body`. Have a look at the usual library example:

<blockquote>路由：POST '/library'<br>URL 编码的请求正文：userId=546&#x26;bookId=6754<br>req.body：{userId: '546', bookId: '6754'}</blockquote>

响应和前面一样的 JSON 对象 `{name: 'firstname lastname'}`。 你可以使用首页应用提供的 html 表单，来测试你的 API 是否正常工作。

提示：除了 GET 和 POST，还有其他几种 http 方法。 按照惯例，http 动词和在服务端执行的某种操作之间有对应关系， 这种对应关系通常如下：

POST（有时候是 PUT）- 使用请求发送信息，以创建新资源；

GET - 读取不用修改的已存在的资源；

PUT 或者 PATCH（有时候是 POST）- 发送数据，以更新资源；

DELETE - 删除资源。

还有其他两种方法常用于与服务进行交互。 Except for GET, all the other methods listed above can have a payload (i.e. the data into the request body). 这些方法也可以使用 body-parser 中间件。

# --hints--

测试 1：你的 API 接口应该使用正确的名字来响应

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/name', { first: 'Mick', last: 'Jagger' }).then(
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

测试 2：你的 API 接口应该使用正确的名字来响应

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/name', {
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

