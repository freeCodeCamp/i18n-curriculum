---
id: 587d8249367417b2b2512c40
title: Konfigurieren von Helmet unter Verwendung der 'parent' helmet()-Middleware
challengeType: 2
forumTopicId: 301575
dashedName: configure-helmet-using-the-parent-helmet-middleware
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

`app.use(helmet())` enthält automatisch alle oben eingeführten Middlewares, außer `noCache()`, und `contentSecurityPolicy()`, aber diese können bei Bedarf aktiviert werden. Du kannst auch jede andere Middleware einzeln deaktivieren oder konfigurieren, indem du ein Konfigurationsobjekt verwendest.

**Beispiel:**

```js
app.use(helmet({
  frameguard: {         // configure
    action: 'deny'
  },
  contentSecurityPolicy: {    // enable and configure
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ['style.com'],
    }
  },
  dnsPrefetchControl: false     // disable
}))
```

Wir haben jede Middleware einzeln vorgestellt - zum einen für Schulungszwecke und zum anderen zur Vereinfachung der Tests. Mit Verwendung des „parent“ `helmet()` ist es einfach die Middleware in einem echten Projekt zu implementieren.

# --hints--

keine Tests - es ist eine deskriptive Aufgabe

```js
assert(true);
```

