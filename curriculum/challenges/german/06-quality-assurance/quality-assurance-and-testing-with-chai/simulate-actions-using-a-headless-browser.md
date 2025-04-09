---
id: 587d824f367417b2b2512c5c
title: Aktionen mit einem Headless Browser simulieren
challengeType: 2
dashedName: simulate-actions-using-a-headless-browser
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

In den nächsten Aufgaben wirst du die menschliche Interaktion mit einer Seite simulieren, indem du einen Headless Browser verwendest.

Headless-Browser sind Webbrowser ohne grafische Benutzeroberfläche. Sie sind in der Lage, HTML, CSS und JavaScript auf die gleiche Weise zu rendern und zu interpretieren wie ein normaler Browser, was sie besonders nützlich für das Testen von Webseiten macht.

Für die folgenden Aufgaben werden Sie Zombie.js verwenden, einen leichtgewichtigen, kopflosen Browser, der nicht auf die Installation zusätzlicher Binärdateien angewiesen ist. Aber es gibt viele andere, leistungsfähigere Headless-Browser-Optionen.

Mocha ermöglicht es dir, einen Teil des Codes auszuführen, bevor einer der eigentlichen Tests läuft. Dies kann z. B. nützlich sein, um Eintragungen in eine Datenbank vorzunehmen, die in den übrigen Tests verwendet werden.

Mit einem Headless-Browser musst du, bevor du Tests ausführst, **die zu testende Seite besuchen**.

Der `suiteSetup`-Hook wird nur einmal zu Beginn einer Testsuite ausgeführt.

Es gibt verschiedene andere Hook-Typen, die vor jedem Test, nach jedem Test oder am Ende einer Testsuite einen Code ausführen können. Weitere Informationen dazu findest du in den Mocha-Dokumenten.

# --instructions--

Füge innerhalb der `tests/2_functional-tests.js`, sofort nach der `Browser` Deklaration, deine Projekt URL zu der `site` Eigenschaft der Variablen hinzu:

```js
Browser.site = 'http://0.0.0.0:3000'; // Your URL here
```

Dann wird auf der Hauptebene der `'Functional Tests with Zombie.js'` Suite, eine neue Instanz des `Browser`-Objekts mit dem folgenden Code instanziiert:

```js
const browser = new Browser();
```

And use the `suiteSetup` hook to direct the `browser` to the `/` route with the following code. **Note**: `done` is passed as a callback to `browser.visit`, you should not invoke it.

```js
suiteSetup(function(done) {
  return browser.visit('/', done);
});
```

# --hints--

Alle Tests sollten bestanden werden.

```js
  $.get(code + '/_api/get-tests?type=functional&n=4').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

