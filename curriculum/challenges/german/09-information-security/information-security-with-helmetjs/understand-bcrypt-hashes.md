---
id: 58a25bcef9fc0f352b528e7c
title: BCrypt Hashes verstehen
challengeType: 2
forumTopicId: 301586
dashedName: understand-bcrypt-hashes
---

# --description--

For the following challenges, you will be working with a new starter project that is different from the previous one. You can find the new starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or clone it from <a href="https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

BCrypt-Hashes sind sehr sicher. Ein Hash ist im Grunde ein Fingerabdruck der ursprünglichen Daten - immer einzigartig. Dazu werden die Originaldaten in einen Algorithmus eingespeist und ein Ergebnis mit fester Länge zurückgegeben. Um diesen Prozess weiter zu verkomplizieren und sicherer zu machen, kannst du deinen Hash auch *salten*. Beim Salten des Hashes werden den Originaldaten vor dem Hashing zufällige Daten hinzugefügt, was das Entschlüsseln des Hashes noch schwieriger macht.

BCrypt-Hashes sehen immer wie folgt aus `$2a$13$ZyprE5MRw2Q3WpNOGZWGbeG7ADUre1Q8QO.uUUtcbqloU0yvzavOm`, was eine Struktur hat. Das erste kleine Datenbit `$2a` gibt an, welche Art von Hash-Algorithmus verwendet wurde. Der nächste Teil `$13` definiert die *Kosten*. Bei den Kosten geht es darum, wie viel Energie für die Berechnung des Hashwerts benötigt wird. Sie liegt auf einer logarithmischen Skala von 2^cost und bestimmt, wie oft die Daten durch den Hash-Algorithmus geschickt werden. Bei einem Preis von 10 kann man zum Beispiel 10 Passwörter pro Sekunde auf einem durchschnittlichen Computer hacken, bei einem Preis von 15 braucht man 3 Sekunden pro Hash... und bei einem Preis von 31 würde es mehrere Tage dauern, einen Hash zu erstellen. Ein Aufwand von 12 gilt zur Zeit als sehr sicher. Der letzte Teil deines Hashes `$ZyprE5MRw2Q3WpNOGZWGbeG7ADUre1Q8QO.uUUtcbqloU0yvzavOm` sieht aus wie ein einziger großer String aus Zahlen, Punkten und Buchstaben, aber in Wirklichkeit sind es zwei getrennte Informationsteile. Die ersten 22 Zeichen sind das Salz im Klartext, und der Rest ist das gehashte Passwort!

# --instructions--

Füge deinen gesamten Code für diese Lektionen in die `server.js`-Datei zwischen dem Code ein, mit dem wir begonnen haben. Ändere oder lösche nicht den Code, den wir für dich hinzugefügt haben.

BCrypt wurde bereits als Abhängigkeit hinzugefügt, also benötigen du es als `bcrypt` in deinem Server.

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben.

# --hints--

BCrypt sollte eine Abhängigkeit sein.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        'bcrypt',
        'Your project should list "bcrypt" as a dependency'
      );
    },
    (xhr) => {
      throw new Error(xhr.statusText);
    }
  );
```

BCrypt sollte ordnungsgemäß angefordert werden.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/server.js').then(
    (data) => {
      assert.match(
        data,
        /bcrypt.*=.*require.*('|")bcrypt('|")/gi,
        'You should correctly require and instantiate socket.io as io.'
      );
    },
    (xhr) => {
      throw new Error(xhr.statusText);
    }
  );
```

