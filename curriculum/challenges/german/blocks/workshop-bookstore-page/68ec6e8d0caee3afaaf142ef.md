---
id: 68ec6e8d0caee3afaaf142ef
title: Schritt 8
challengeType: 0
dashedName: step-8
---

# --description--

Sie können mehrere Elemente innerhalb eines `div`-Elements hinzufügen, um zusammengehörige Inhalte zu gruppieren. Erstellen Sie innerhalb des Elements mit einem `class` von `card-container` ein weiteres `div`-Element. Dieses `div` wird die erste Buchkarte darstellen.

Fügen Sie diesem neuen `div`-Element ein `class`-Attribut hinzu und setzen Sie den Wert des `class`-Attributs auf `card`.

# --hints--

Sie sollten ein `div`-Element verschachtelt innerhalb des Elements mit der Klasse `card-container` haben.

```js
assert.exists(document.querySelector('.card-container div'));
```

Ihr neues `div`-Element sollte ein `class`-Attribut besitzen.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

Ihr neues `div`-Element sollte ein `class` mit dem Wert `card` haben.

```js
assert.exists(document.querySelector('.card-container div.card'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
  <h1>XYZ Bookstore</h1>
  <p>Browse our collection of amazing books!</p>
  
  <div class="card-container">
--fcc-editable-region--
    
--fcc-editable-region--
  </div>
</body>

</html>
```
