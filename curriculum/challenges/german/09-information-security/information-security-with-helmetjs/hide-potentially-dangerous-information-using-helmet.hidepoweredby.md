---
id: 587d8247367417b2b2512c37
title: Ausblenden potenziell gefährlicher Informationen mit helmet.hidePoweredBy()
challengeType: 2
forumTopicId: 301580
dashedName: hide-potentially-dangerous-information-using-helmet-hidepoweredby
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Hacker können bekannte Schwachstellen in Express/Node ausnutzen, wenn sie sehen, dass deine Website von Express betrieben wird. `X-Powered-By: Express` wird standardmäßig in jeder Anfrage von Express gesendet. Verwende die `helmet.hidePoweredBy()`-Middleware, um den X-Powered-By-Header zu entfernen.

# --hints--

helmet.hidePoweredBy() Middleware sollte korrekt eingebunden werden

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'hidePoweredBy');
      assert.notEqual(data.headers['x-powered-by'], 'Express');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

