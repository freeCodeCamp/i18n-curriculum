---
id: bd7123c8c441eddfaeb5bdef
title: Sagen Sie Hallo zu HTML-Elementen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

Willkommen bei den HTML-Coding-Aufgaben von freeCodeCamp. Diese führen Sie Schritt für Schritt durch die Webentwicklung.

Zuerst beginnen Sie damit, eine einfache Webseite mit HTML zu erstellen. Sie können den Code in Ihrem Code-Editor bearbeiten, der in diese Webseite eingebettet ist.

Sehen Sie den Code in Ihrem Code-Editor, der `<h1>Hello</h1>` sagt? Das ist ein HTML-Element.

Die meisten HTML-Elemente haben ein öffnendes Tag und ein schließendes Tag.

Öffnende Tags sehen so aus:

```html
<h1>
```

Schließende Tags sehen so aus:

```html
</h1>
```

Der einzige Unterschied zwischen öffnenden und schließenden Tags ist der Schrägstrich nach der öffnenden Klammer eines schließenden Tags.

Jede Aufgabe hat Tests, die Sie jederzeit durch Klicken auf die Schaltfläche „Tests ausführen“ starten können. Wenn Sie alle Tests bestehen, werden Sie aufgefordert, Ihre Lösung abzusenden und zur nächsten Coding-Aufgabe zu wechseln.

# --instructions--

Um den Test in dieser Aufgabe zu bestehen, ändern Sie den Text Ihres `h1`-Elements so, dass er `Hello World` sagt.

# --hints--

Ihr `h1`-Element sollte den Text `Hello World` enthalten.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
