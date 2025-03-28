---
id: 5895f70cf9fc0f352b528e66
title: 用户对象的序列化
challengeType: 2
forumTopicId: 301563
dashedName: serialization-of-a-user-object
---

# --description--

Serialization and deserialization are important concepts in regard to authentication. To serialize an object means to convert its contents into a small *key* that can then be deserialized into the original object. This is what allows us to know who has communicated with the server without having to send the authentication data, like the username and password, at each request for a new page.

要正确设置此功能，你需要一个序列化的函数和一个反序列化函数。 在 Passport 中间件中，可以使用以下方法创建它们：

```javascript
passport.serializeUser(cb);
passport.deserializeUser(cb);
```

传递给 `serializeUser` 的回调函数接收两个参数：完整的用户对象和由 passport 使用的回调。

该回调需要两个参数：一个错误，以及应在回调中返回的一个用于识别用户的唯一键。 你将在对象中使用用户的 `_id`。 这是保证唯一的，因为它是由 MongoDB 生成的。

同样，`deserializeUser` 需要用两个参数调用：唯一的键值和回调函数。

该回调需要两个参数：一个错误，以及完整的用户对象。 要获取完整的用户对象，请按如下方式进行 Mongo `_id` 查询：


```javascript
passport.serializeUser((user, done) => {
  done(null, user._id);
});

passport.deserializeUser((id, done) => {
  myDataBase.findOne({ _id: new ObjectID(id) }, (err, doc) => {
    done(null, null);
  });
});
```

将上面的两个函数添加到你的服务器。 `ObjectID` 类来自 `mongodb` 包。 `mongodb@~3.6.0` 已经被添加为依赖项。 使用以下方式声明此类：

```javascript
const { ObjectID } = require('mongodb');
```

在设置数据库连接之前，`deserializeUser`将抛出错误。 因此，现在请在 `deserializeUser` 回调函数中注释掉 `myDatabase.findOne` 调用，只调用 `done(null, null)` 即可。

当你觉得已经完成时提交你的页面。 如果你遇到错误，你可以<a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#serialization-of-a-user-object-4" target="_blank" rel="noopener noreferrer nofollow">查看已完成的项目</a>。

# --hints--

你应该正确地序列化用户对象。

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /passport.serializeUser/gi,
    'You should have created your passport.serializeUser function'
  );
  assert.match(
    data,
    /null,\s*user._id/gi,
    'There should be a callback in your serializeUser with (null, user._id)'
  );
}
```

你应该正确地反序列化用户对象。

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /passport.deserializeUser/gi,
    'You should have created your passport.deserializeUser function'
  );
  assert.match(
    data,
    /null,\s*null/gi,
    'There should be a callback in your deserializeUser with (null, null) for now'
  );
}
```

MongoDB 应作为项目的依赖。

```js
async () => {
  const url = new URL("/_api/package.json", code);
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'mongodb',
    'Your project should list "mongodb" as a dependency'
  );
}
```

应该正确请求 Mongodb，包括 ObjectId。

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /require.*("|')mongodb\1/gi,
    'You should have required mongodb'
  );
  assert.match(
    data,
    /new ObjectID.*id/gi,
    'Even though the block is commented out, you should use new ObjectID(id) for when we add the database'
  );
}
```

