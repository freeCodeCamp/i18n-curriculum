---
id: 587d8249367417b2b2512c40
title: Konfigurieren von Helmet unter Verwendung der 'parent' helmet()-Middleware
challengeType: 2
forumTopicId: 301575
dashedName: configure-helmet-using-the-parent-helmet-middleware
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

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

