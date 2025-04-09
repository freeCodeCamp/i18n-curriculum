---
id: 587d8247367417b2b2512c39
title: >-
  Minderung des Risikos von Cross Site Scripting (XSS)-Angriffen mit helmet.xssFilter()
challengeType: 2
forumTopicId: 301583
dashedName: mitigate-the-risk-of-cross-site-scripting-xss-attacks-with-helmet-xssfilter
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Cross-Site-Scripting (XSS) ist eine häufige Angriffsart, bei der schädliche Skripte in ungeschützte Seiten eingeschleust werden, um sensible Daten wie Sitzungscookies oder Kennwörter zu stehlen.

Die Grundregel um das Risiko eines XSS-Angriffs zu senken, ist einfach: "Vertraue niemals den Benutzereingaben“. Als Entwickler solltest du immer alle von außen kommenden Eingaben überprüfen. Dazu gehören Daten aus Formularen, GET Query URLs und sogar aus POST bodies. Sanitizing (Bereinigung) bedeutet, dass du die Zeichen finden und kodieren solltest, die gefährlich sein könnten, z. B. &lt;, >.

Moderne Browser können helfen, das Risiko zu verringern, indem sie bessere Software-Strategien anwenden. Oft sind diese über HTTP-Header konfigurierbar.

Der X-XSS-Protection HTTP-Header ist ein grundlegender Schutz. Der Browser erkennt ein potenziell eingeschleustes Skript mithilfe eines heuristischen Filters. Wenn die Kopfzeile aktiviert ist, ändert der Browser den Skriptcode und neutralisiert ihn. Das hat immernoch begrenzten Support.

# --instructions--

Verwende `helmet.xssFilter()`, um die an deinen Server gesendeten Eingaben zu bereinigen.

# --hints--

Die helmet.xssFilter()-Middleware sollte korrekt eingebaut werden

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'xXssProtection');
      assert.property(data.headers, 'x-xss-protection');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

