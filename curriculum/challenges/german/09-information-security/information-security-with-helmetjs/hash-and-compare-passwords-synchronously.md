---
id: 58a25bcff9fc0f352b528e7e
title: Passwörter synchron hashen und vergleichen
challengeType: 2
forumTopicId: 301579
dashedName: hash-and-compare-passwords-synchronously
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Das synchrone Hashing ist ebenso einfach, kann aber zu Verzögerungen führen, wenn es auf der Serverseite mit hohen Kosten verwendet wird oder wenn das Hashing sehr oft durchgeführt wird. Das Hashing mit dieser Methode ist so einfach wie der Aufruf

```js
var hash = bcrypt.hashSync(myPlaintextPassword, saltRounds);
```

Füge diese Hashing-Methode in deinen Code hinzu und protokolliere das Ergebnis auf der Konsole. Auch hier sind die verwendeten Variablen bereits im Server definiert, so dass du sie nicht anpassen musst. Obwohl du das gleiche Passwort wie in der asynchronen Funktion hashst, ist das Ergebnis in der Konsole unterschiedlich. Das liegt daran, dass der Salt jedes Mal zufällig generiert wird, wie an den ersten 22 Zeichen in der dritten Zeichenfolge des Hashes zu erkennen ist. Um nun eine Passworteingabe mit dem neuen Sync-Hash zu vergleichen, kannst die compareSync-Methode verwenden:

```js
var result = bcrypt.compareSync(myPlaintextPassword, hash);
```

wobei das Ergebnis ein boolescher Wert true oder false ist.

# --instructions--

Füge die Funktion ein und protokolliere das Ergebnis in der Konsole, um zu sehen, ob sie funktioniert.

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben.

# --hints--

Der Sync-Hash sollte generiert und korrekt verglichen werden.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/server.js').then(
    (data) => {
      assert.match(
        data,
        /START_SYNC[^]*hash.*=.*bcrypt.hashSync.*myPlaintextPassword( |),( |)saltRounds[^]*END_SYNC/gi,
        'You should call bcrypt.hashSync on myPlaintextPassword with saltRounds'
      );
      assert.match(
        data,
        /START_SYNC[^]*result.*=.*bcrypt.compareSync.*myPlaintextPassword( |),( |)hash[^]*END_SYNC/gi,
        'You should call bcrypt.compareSync on myPlaintextPassword with the hash generated in the last line'
      );
    },
    (xhr) => {
      throw new Error(xhr.statusText);
    }
  );
```

