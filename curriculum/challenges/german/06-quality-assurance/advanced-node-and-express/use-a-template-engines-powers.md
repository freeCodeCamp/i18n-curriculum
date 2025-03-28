---
id: 5895f70bf9fc0f352b528e64
title: Verwende ein Template Engine's Powers
challengeType: 2
forumTopicId: 301567
dashedName: use-a-template-engines-powers
---

# --description--

One of the greatest features of using a template engine is being able to pass variables from the server to the template file before rendering it to HTML.

In deiner Pug Datei kannst du eine Variable verwenden, indem du den Variablennamen als `#{variable_name}` inline mit einem anderen Text eines Elements verwendest oder indem du ein gleiches Zeichnen auf dem Element ohne Leerzeichen wie `p=variable_name` verwendest, der den Wert der Variable dem Text des Elements zuweist.

Bei Pug dreht sich alles um die Verwendung von Leerzeichen und Tabulatoren, um verschachtelte Elemente anzuzeigen und die Menge an Code zu reduzieren, die für eine schöne Website erforderlich ist.

Nimm zum Beispiel den folgenden Pug-Code:

```pug
head
  script(type='text/javascript').
    if (foo) bar(1 + 5);
body
  if youAreUsingPug
      p You are amazing
    else
      p Get on it!
```

Daraus ergibt sich der folgende HTML-Code:

```html
<head>
  <script type="text/javascript">
    if (foo) bar(1 + 5);
  </script>
</head>
<body>
  <p>You are amazing</p>
</body>
```

Die in deinem Projekt enthaltene `index.pug`-Datei verwendet die Variablen `title` und `message`.

Übergebe diese von deinem Server an die Pug-Datei, indem du ein Objekt als zweites Argument zu deinem `res.render`-Aufruf mit den Variablen und deinen Werten hinzufügst. Gib dem `title` einen Wert von `Hello` und `message` einen Wert von `Please log in`.

Es sollte wie folgt aussehen:

```javascript
res.render('index', { title: 'Hello', message: 'Please log in' });
```

Aktualisiere nun deine Seite, und du solltest diese Werte in deiner Ansicht an der richtigen Stelle sehen, wie sie in deiner `index.pug`-Datei festgelegt ist!

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du das <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#use-a-template-engines-power-2" target="_blank" rel="noopener noreferrer nofollow">bis zu diesem Punkt abgeschlossene Projekt</a> überprüfen.

# --hints--

Pug sollte Variablen korrekt darstellen.

```js
async () => {
  const url = new URL("/", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /pug-variable("|')>Please log in/gi,
    'Your projects home page should now be rendered by pug with the projects .pug file unaltered'
  );
}
```

