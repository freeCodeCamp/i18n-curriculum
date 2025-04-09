---
id: 587d8248367417b2b2512c3c
title: Bitte die Browser, nur mit helmet.hsts() über HTTPS auf deine Website zuzugreifen
challengeType: 2
forumTopicId: 301573
dashedName: ask-browsers-to-access-your-site-via-https-only-with-helmet-hsts
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

HTTP Strict Transport Security (HSTS) ist eine Web-Sicherheitsrichtlinie, die dazu beiträgt, Websites vor Protokoll-Downgrad-Attacken und Cookie-Hijacking zu schützen. Wenn du über HTTPS auf deine Website zugreifen kannst, kannst du den Browser des Benutzers bitten, unsichere HTTP zu vermeiden. Indem du den Header Strict-Transport-Security einstellst, gibst du den Browsern an, HTTPS für zukünftige Anfragen in einer bestimmten Zeit zu verwenden. Dies gilt auch für Anfragen, die nach der ersten Anfrage kommen.

# --instructions--

Konfiguriere `helmet.hsts()`, um HTTPS für die nächsten 90 Tage zu verwenden. Übergib das Konfigurations-Objekt `{maxAge: timeInSeconds, force: true}`. Du kannst eine Variable `ninetyDaysInSeconds = 90*24*60*60;` erstellen, die für `timeInSeconds` verwendet wird.

Hinweis: Die Konfiguration von HTTPS auf einer benutzerdefinierten Website erfordert den Erwerb einer Domain und eines SSL/TLS-Zertifikats.

# --hints--

helmet.hsts()-Middleware sollte korrekt eingebaut werden

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'hsts');
      assert.property(data.headers, 'strict-transport-security');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

maxAge sollte 7776000 s (90 Tagen) entsprechen

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.match(
        data.headers['strict-transport-security'],
        /^max-age=7776000;?/
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

