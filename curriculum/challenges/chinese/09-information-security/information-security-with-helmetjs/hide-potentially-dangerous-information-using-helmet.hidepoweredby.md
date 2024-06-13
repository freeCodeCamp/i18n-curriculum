---
id: 587d8247367417b2b2512c37
title: 使用 helmet.hidePoweredBy() 隐藏潜在的危险信息
challengeType: 2
forumTopicId: 301580
dashedName: hide-potentially-dangerous-information-using-helmet-hidepoweredby
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

如果黑客发现你的网站是用 Express 搭建的，那么他们就可以利用 Express 或 Node 现存的漏洞来攻击你的网站。 `X-Powered-By: Express` 默认在来自 Express 的每个请求中被发送。 使用 `helmet.hidePoweredBy()` 中间件来移除 X-Powered-By 头。

# --hints--

应正确地安装 helmet.hidePoweredBy() 中间件

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'hidePoweredBy');
      assert.notEqual(data.headers['x-powered-by'], 'Express');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```
