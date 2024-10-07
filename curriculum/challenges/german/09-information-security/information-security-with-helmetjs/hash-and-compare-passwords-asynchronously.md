---
id: 58a25bcff9fc0f352b528e7d
title: Passwörter asynchron hashen und vergleichen
challengeType: 2
forumTopicId: 301578
dashedName: hash-and-compare-passwords-asynchronously
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Da das Hashing sehr rechenintensiv ist, wird empfohlen, es asynchron auf dem Server durchzuführen, um zu vermeiden, dass eingehende Verbindungen während des Hashens blockiert werden. Alles, was du tun musst, um ein Passwort asynchron zu hashen, ist der Aufruf

```js
bcrypt.hash(myPlaintextPassword, saltRounds, (err, hash) => {
  /*Store hash in your db*/
});
```

# --instructions--

Füge diese Hashing-Funktion zu deinem Server hinzu (wir haben die in der Funktion verwendeten Variablen bereits für dich definiert) und protokolliere sie auf der Konsole, damit du sie sehen kannst! An dieser Stelle speicherst du normalerweise den Hash in deiner Datenbank.

Wenn du nun herausfinden musst, ob eine neue Eingabe die gleichen Daten wie der Hash sind, kannst du einfach die Vergleichsfunktion verwenden.

```js
bcrypt.compare(myPlaintextPassword, hash, (err, res) => {
  /*res == true or false*/
});
```

Füge dies in deine bestehende Hash-Funktion ein (da du warten musst, bis der Hash abgeschlossen ist, bevor du die Vergleichsfunktion aufrufst), nachdem du den abgeschlossenen Hash protokolliert hast, und logge 'res' auf der Konsole innerhalb des Vergleichs. Du solltest in der Konsole eine Raute sehen, und dann wird 'true' ausgegeben! Wenn du "myPlaintextPassword" in der Vergleichsfunktion in "someOtherPlaintextPassword" änderst, sollte es "false" heißen.

```js
bcrypt.hash('passw0rd!', 13, (err, hash) => {
  console.log(hash);
  //$2a$12$Y.PHPE15wR25qrrtgGkiYe2sXo98cjuMCG1YwSI5rJW1DSJp0gEYS
  bcrypt.compare('passw0rd!', hash, (err, res) => {
    console.log(res); //true
  });
});

```

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben.

# --hints--

Async-Hash sollte generiert und korrekt verglichen werden.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/server.js').then(
    (data) => {
      assert.match(
        data,
        /START_ASYNC[^]*bcrypt.hash.*myPlaintextPassword( |),( |)saltRounds( |),( |).*err( |),( |)hash[^]*END_ASYNC/gi,
        'You should call bcrypt.hash on myPlaintextPassword and saltRounds and handle err and hash as a result in the callback'
      );
      assert.match(
        data,
        /START_ASYNC[^]*bcrypt.hash[^]*bcrypt.compare.*myPlaintextPassword( |),( |)hash( |),( |).*err( |),( |)res[^]*}[^]*}[^]*END_ASYNC/gi,
        'Nested within the hash function should be the compare function comparing myPlaintextPassword to hash'
      );
    },
    (xhr) => {
      throw new Error(xhr.statusText);
    }
  );
```

