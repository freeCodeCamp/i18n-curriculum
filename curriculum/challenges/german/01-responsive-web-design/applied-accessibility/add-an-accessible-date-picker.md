---
id: 587d778b367417b2b2512aa8
title: Füge eine barrierefreie Datumsauswahl hinzu
challengeType: 0
videoUrl: 'https://scrimba.com/c/cR3bRbCV'
forumTopicId: 301008
dashedName: add-an-accessible-date-picker
---

# --description--

Formulare enthalten oft das `input`-Feld mit dem verschiedene Formularsteuerelemente erstellt werden können. Das `type`-Attribut dieses Elements gibt an, welche Art von `input`-Element erstellt wird.

Möglicherweise hast Du die `text`- und `submit`-Input-Arten in vorherigen Aufgaben schon gesehen. Und mit HTML5 wurde eine Option eingeführt, um ein `date`-Feld für Datumsangaben zu nutzen. Abhängig von der Browserunterstützung wird eine Datumsauswahl im `input`-Feld angezeigt, wenn es im Fokus ist, was das Ausfüllen eines Formulars für alle Benutzer erleichtert.

For older browsers, the type will default to `text`, so it helps to show users the expected date format in the `label` or `placeholder` text just in case.

Hier ist ein Beispiel:

```html
<label for="input1">Enter a date:</label>
<input type="date" id="input1" name="input1">
```

# --instructions--

Camper Cat stellt ein Mortal Kombat-Turnier auf die Beine und möchte seine Teilnehmer fragen, welches Datum dafür in Frage kommt. Add an `input` tag with a `type` attribute of `date`, an `id` attribute of `pickdate`, and a `name` attribute of `date`.

# --hints--

Your code should add one `input` tag for the date selector field.

```js
assert.lengthOf(document.querySelectorAll('input'), 2);
```

Your `input` tag should have a `type` attribute with a value of `date`.

```js
assert.equal(document.querySelector('input')?.getAttribute('type'), 'date');
```

Your `input` tag should have an `id` attribute with a value of `pickdate`.

```js
assert.equal(document.querySelector('input')?.getAttribute('id'),'pickdate');
```

Your `input` tag should have a `name` attribute with a value of `date`.

```js
assert.equal(document.querySelector('input')?.getAttribute('name'), 'date');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Tournaments</h1>
  </header>
  <main>
    <section>
      <h2>Mortal Kombat Tournament Survey</h2>
      <form>
        <p>Tell us the best date for the competition</p>
        <label for="pickdate">Preferred Date:</label>

        <!-- Only change code below this line -->



        <!-- Only change code above this line -->

        <input type="submit" name="submit" value="Submit">
      </form>
    </section>
  </main>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Tournaments</h1>
  </header>
  <main>
    <section>
      <h2>Mortal Kombat Tournament Survey</h2>
      <form>
        <p>Tell us the best date for the competition</p>
        <label for="pickdate">Preferred Date:</label>
        <input type="date" id="pickdate" name="date">
        <input type="submit" name="submit" value="Submit">
      </form>
    </section>
  </main>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
