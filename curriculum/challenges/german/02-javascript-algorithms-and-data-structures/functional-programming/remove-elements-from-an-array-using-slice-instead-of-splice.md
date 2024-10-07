---
id: 9d7123c8c441eeafaeb5bdef
title: Entfernen von Elementen aus einem Array mit slice statt splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. Hier ist ein Beispiel:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Hier gibt `splice` den String `London` zurück und löscht ihn aus dem Array cities. `cities` wird den Wert `["Chicago", "Delhi", "Islamabad", "Berlin"]` haben.

Wie wir in der letzten Aufgabe gesehen haben, verändert die Methode `slice` das ursprüngliche Array nicht, sondern gibt ein neues Array zurück, das in einer Variablen gespeichert werden kann. Du erinnerst dich, dass die Methode `slice` zwei Argumente für die Indizes für den Anfang und das Ende des Slice benötigt (das Ende ist nicht eingeschlossen) und diese Elemente in einem neuen Array zurückgibt. Wenn du die Methode `slice` anstelle von `splice` verwendest, vermeidest du alle Array-mutierenden Nebeneffekte.

# --instructions--

Schreibe die Funktion `nonMutatingSplice` um, indem du `slice` anstelle von `splice` verwendest. Sie sollte das übergebene Array `cities` auf eine Länge von 3 begrenzen und ein neues Array mit nur den ersten drei Elementen zurückgeben.

Verändere das ursprüngliche Array, das der Funktion übergeben wird, nicht.

# --hints--

Dein Code sollte die Methode `slice` verwenden.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Dein Code sollte nicht die Methode `splice` verwenden.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Das ursprüngliche Array, das an die Funktion übergeben wird, sollte nicht verändert werden.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` sollte `["Chicago", "Delhi", "Islamabad"]` zurückgeben.

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
