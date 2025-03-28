---
id: 587d8248367417b2b2512c3d
title: DNS Prefetching mit helmet.dnsPrefetchControl() deaktivieren
challengeType: 2
forumTopicId: 301577
dashedName: disable-dns-prefetching-with-helmet-dnsprefetchcontrol
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Um die Leistung zu verbessern, rufen die meisten Browser DNS-Einträge für die Links auf einer Seite vorab ab. Auf diese Weise ist die Ziel-IP bereits bekannt, wenn der Nutzer auf einen Link klickt. Dies kann zu einer übermäßigen Nutzung des DNS-Dienstes (wenn du eine große Website besitzt, die von Millionen von Menschen besucht wird...), zu Problemen mit dem Datenschutz (jemand mit unbefugtem Zugriff könnte herausfinden, dass du dich auf einer bestimmten Seite befindest) oder zu einer Veränderung der Seitenstatistik (einige Links können als besucht erscheinen, obwohl sie es nicht sind) führen. Wenn du ein hohes Sicherheitsbedürfnis hast, kannst du das DNS-Prefetching deaktivieren, was allerdings mit Leistungseinbußen verbunden ist.

# --instructions--

Verwende die `helmet.dnsPrefetchControl()`-Methode auf deinem Server.

# --hints--

Die helmet.dnsPrefetchControl()-Middleware sollte korrekt eingebaut werden

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'dnsPrefetchControl');
      assert.equal(data.headers['x-dns-prefetch-control'], 'off');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

