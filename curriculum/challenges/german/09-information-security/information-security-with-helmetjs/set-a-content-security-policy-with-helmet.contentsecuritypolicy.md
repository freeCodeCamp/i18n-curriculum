---
id: 587d8249367417b2b2512c3f
title: Festlegen einer Inhaltssicherheitsrichtlinie mit helmet.contentSecurityPolicy()
challengeType: 2
forumTopicId: 301585
dashedName: set-a-content-security-policy-with-helmet-contentsecuritypolicy
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Diese Aufgabe hebt eine vielversprechende neue Verteidigung hervor, die das Risiko und die Auswirkungen vieler Arten von Angriffen in modernen Browsern erheblich reduzieren kann. Durch das Einrichten und Konfigurieren einer Inhaltssicherheitsrichtlinie kannst du verhindern, dass etwas Unerwünschtes in deine Seite eingefügt wird. Dadurch wird deine App vor XSS-Schwachstellen, unerwünschtem Tracking, bösartigen Frames und vielem mehr geschützt. CSP funktioniert durch die Festlegung einer Liste zulässiger Inhaltsquellen, die als vertrauenswürdig gelten. Du kannst sie für jede Art von Ressource, die eine Webseite benötigt, konfigurieren (Skripte, Stylesheets, Schriftarten, Frames, Medien usw...). Es stehen mehrere Richtlinien zur Verfügung, so dass ein Website-Besitzer eine genauere Kontrolle haben kann. Siehe HTML 5 Rocks, KeyCDN für weitere Details. Leider wird CSP nicht von älteren Browsern unterstützt.

Standardmäßig sind die Direktiven weit offen, so dass es wichtig ist, die defaultSrc-Direktive als Fallback zu setzen. Helmet unterstützt sowohl defaultSrc- als auch default-src-Benennungsstile. Der Fallback gilt für die meisten nicht spezifizierten Richtlinien.

# --instructions--

Verwende in dieser Übung `helmet.contentSecurityPolicy()`. Konfiguriere es, indem du ein `directives`-Element hinzufügst. Setze im Objekt den `defaultSrc` auf `["'self'"]` (die Liste der erlaubten Quellen muss in einem Array sein), um standardmäßig nur Ihrer Website-Adresse zu vertrauen. Lege auch die `scriptSrc` Direktive so fest, dass du nur das Herunterladen von Skripten von deiner Webseite erlaubst (`'self'`), und von der Domäne `'trusted-cdn.com'`.von.

Tipp: Wenn im `'self'` keyword die einfachen Anführungszeichen Teil des keywords selbst sind, so muss es in doppelte Anführungszeichen eingefügt werden, um funktionieren zu können.

# --hints--

Die helmet.contentSecurityPolicy()-Middleware sollte korrekt eingebaut werden

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'csp');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Deine csp-Konfiguration ist nicht korrekt. defaultSrc sollte ["self'"] und scriptSrc sollte ["'self'", 'trusted-cdn.com'] sein

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      var cspHeader = Object.keys(data.headers).filter(function (k) {
        return (
          k === 'content-security-policy' ||
          k === 'x-webkit-csp' ||
          k === 'x-content-security-policy'
        );
      })[0];
      assert.equal(
        data.headers[cspHeader],
        "default-src 'self'; script-src 'self' trusted-cdn.com"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```
