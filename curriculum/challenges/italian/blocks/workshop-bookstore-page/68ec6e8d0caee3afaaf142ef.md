---
id: 68ec6e8d0caee3afaaf142ef
title: Passaggio 8
challengeType: 0
dashedName: step-8
---

# --description--

Puoi aggiungere più elementi all’interno di un elemento `div` per raggruppare contenuti correlati. All’interno dell’elemento che ha un `class` di `card-container`, crea un altro elemento `div`. Questo `div` rappresenterà la prima scheda del libro.

Aggiungi un attributo `class` a questo nuovo elemento `div` e imposta il valore dell’attributo `class` su `card`.

# --hints--

Dovresti avere un elemento `div` annidato all’interno dell’elemento con una classe `card-container`.

```js
assert.exists(document.querySelector('.card-container div'));
```

Il tuo nuovo elemento `div` dovrebbe avere un attributo `class`.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

Il tuo nuovo elemento `div` dovrebbe avere un `class` con valore `card`.

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
