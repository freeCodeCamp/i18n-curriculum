---
id: 9d7123c8c441eeafaeb5bdef
title: Elemente aus einem Array mit slice statt splice entfernen
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

Ein häufiges Muster bei der Arbeit mit Arrays ist, dass Sie Elemente entfernen und den Rest des Arrays behalten möchten. JavaScript bietet die `splice`-Methode dafür an, die Argumente für den Index enthält, ab dem Elemente entfernt werden sollen, und dann die Anzahl der zu entfernenden Elemente. Wenn das zweite Argument nicht angegeben wird, ist der Standard, Elemente bis zum Ende zu entfernen. Allerdings verändert die `splice`-Methode das ursprüngliche Array, auf dem sie aufgerufen wird. Hier ist ein Beispiel:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Hier gibt `splice` den String `London` zurück und löscht ihn aus dem cities-Array. `cities` wird den Wert `["Chicago", "Delhi", "Islamabad", "Berlin"]` haben.

Wie wir in der letzten Aufgabe gesehen haben, verändert die `slice`-Methode das ursprüngliche Array nicht, sondern gibt ein neues zurück, das in einer Variablen gespeichert werden kann. Denken Sie daran, dass die `slice`-Methode zwei Argumente für die Indizes zum Beginnen und Beenden des Ausschnitts nimmt (das Ende ist nicht eingeschlossen) und diese Elemente in einem neuen Array zurückgibt. Die Verwendung der `slice`-Methode anstelle von `splice` hilft, unerwünschte Nebeneffekte durch das Verändern des Arrays zu vermeiden.

# --instructions--

Schreiben Sie die Funktion `nonMutatingSplice` so um, dass sie `slice` anstelle von `splice` verwendet. Sie soll das übergebene `cities`-Array auf eine Länge von 3 begrenzen und ein neues Array mit nur den ersten drei Elementen zurückgeben.

Verändern Sie das ursprüngliche Array, das an die Funktion übergeben wird, nicht.

# --hints--

Ihr Code sollte die `slice`-Methode verwenden.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Ihr Code sollte die `splice`-Methode nicht verwenden.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Sie sollten das ursprüngliche Array, das an die Funktion übergeben wird, nicht verändern.

```js
assert(
  (function () {
    const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
    nonMutatingSplice(_inputCities);
    return (
      JSON.stringify(_inputCities) ===
      JSON.stringify(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])
    );
  })()
);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` sollte `["Chicago", "Delhi", "Islamabad"]` zurückgeben.

```js
assert.deepEqual(
  nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"]),
  ["Chicago", "Delhi", "Islamabad"]
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
