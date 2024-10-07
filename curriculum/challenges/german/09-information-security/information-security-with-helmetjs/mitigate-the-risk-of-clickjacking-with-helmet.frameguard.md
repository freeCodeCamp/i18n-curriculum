---
id: 587d8247367417b2b2512c38
title: Minimiere das Risiko von Clickjacking mit helmet.frameguard()
challengeType: 2
forumTopicId: 301582
dashedName: mitigate-the-risk-of-clickjacking-with-helmet-frameguard
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Deine Seite könnte ohne deine Zustimmung in ein `<frame>` oder `<iframe>` gesetzt werden. Dies kann unter anderem zu Clickjacking-Attacken führen. Clickjacking ist eine Technik, mit der ein Nutzer dazu gebracht wird, mit einer Seite zu interagieren, die nicht seinen Vorstellungen entspricht. Dies kann erreicht werden, indem deine Seite im Rahmen eines bösartigen Kontextes mittels iframing ausgeführt wird. In diesem Zusammenhang kann ein Hacker eine versteckte Ebene über deine Seite legen. Versteckte Buttons können verwendet werden, um schlechte Skripte auszuführen. Diese Middleware legt den X-Frame-Options-Header fest. Es schränkt ein, wer deine Website in einen Rahmen stellen kann. Es gibt drei Modi: DENY, SAMEORIGIN und ALLOW-FROM.

Es ist nicht nötig, dass unsere App geframt wird.

# --instructions--

Verwende `helmet.frameguard()` mit dem Konfigurationsobjekt `{action: 'deny'}`.

# --hints--

Die helmet.frameguard()-Middleware sollte korrekt eingebaut werden

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/app-info').then(
    (data) => {
      assert.include(
        data.appStack,
        'frameguard',
        'helmet.frameguard() middleware is not mounted correctly'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

helmet.frameguard() 'action' sollte auf 'DENY' gesetzt werden

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/app-info').then(
    (data) => {
      assert.property(data.headers, 'x-frame-options');
      assert.equal(data.headers['x-frame-options'], 'DENY');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

