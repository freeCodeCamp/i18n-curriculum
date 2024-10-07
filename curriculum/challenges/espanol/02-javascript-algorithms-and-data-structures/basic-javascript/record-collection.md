---
id: 56533eb9ac21ba0edf2244cf
title: Colección de discos
challengeType: 1
forumTopicId: 18261
dashedName: record-collection
---

# --description--

You are creating a function that aids in the maintenance of a musical album collection. The collection is organized as an object that contains multiple albums which are also objects. Each album is represented in the collection with a unique `id` as the property name. Within each album object, there are various properties describing information about the album. Not all albums have complete information.

La función `updateRecords` toma 4 argumentos representados por los siguientes parámetros de función:

-   `records` - an object containing several individual albums
-   `id` - a number representing a specific album in the `records` object
-   `prop` - a string representing the name of the album’s property to update
-   `value` - a string containing the information used to update the album’s property

Completa la función utilizando las reglas siguientes para modificar el objeto pasado a la función.

-   Your function must always return the entire `records` object.
-   Si `value` es una cadena vacía, elimina la propiedad `prop` dada del álbum.
-   Si `prop` no es `tracks` y `value` no es una cadena vacía, asigna el `value` a la `prop` de ese álbum.
-   Si `prop` es `tracks` y `value` no es una cadena de carácteres vacía, pero el álbum no tiene una propiedad `tracks`, crea un arreglo vacío y agregalo `value` a él.
-   Si la propiedad es `tracks` y `value` no es una cadena de caracteres vacía, agregalo `value` al final del arreglo existente `tracks` del álbum.

**Nota:** Para las pruebas se utiliza una copia del objeto `recordCollection`. No debes modificar directamente el objeto `recordCollection`.

# --hints--

Después de `updateRecords(recordCollection, 5439, "artist", "ABBA")`, `artist` debe ser la cadena `ABBA`

```js
assert(
  updateRecords(_recordCollection, 5439, 'artist', 'ABBA')[5439]['artist'] ===
    'ABBA'
);
```

Después de `updateRecords(recordCollection, 5439, "tracks", "Take a Chance on Me")`, `tracks` debe tener la cadena `Take a Chance on Me` como último y único elemento.

```js
assert(
  updateRecords(_recordCollection, 5439, 'tracks', 'Take a Chance on Me') &&
  _recordCollection[5439]['tracks'].length === 1 &&
  _recordCollection[5439]['tracks'].pop() === 'Take a Chance on Me'
);
```

Después de `updateRecords(recordCollection, 2548, "artist", "")`, `artist` no debe establecerse

```js
updateRecords(_recordCollection, 2548, 'artist', '');
assert(!_recordCollection[2548].hasOwnProperty('artist'));
```

Después de `updateRecords(recordCollection, 1245, "tracks", "Addicted to Love")`, `tracks` debe tener la cadena `Addicted to Love` como último elemento.

```js
assert(
  updateRecords(_recordCollection, 1245, 'tracks', 'Addicted to Love')[1245][
    'tracks'
  ].pop() === 'Addicted to Love'
);
```

Después de `updateRecords(recordCollection, 2468, "tracks", "Free")`, `tracks` debe tener la cadena `1999` como primer elemento.

```js
assert(
  updateRecords(_recordCollection, 2468, 'tracks', 'Free')[2468][
    'tracks'
  ][0] === '1999'
);
```

Después de `updateRecords(recordCollection, 2548, "tracks", "")`, `tracks` no debe establecerse

```js
updateRecords(_recordCollection, 2548, 'tracks', '');
assert(!_recordCollection[2548].hasOwnProperty('tracks'));
```

Después de `updateRecords(recordCollection, 1245, "albumTitle", "Riptide")`, `albumTitle` debe ser la cadena `Riptide`

```js
assert(
  updateRecords(_recordCollection, 1245, 'albumTitle', 'Riptide')[1245][
    'albumTitle'
  ] === 'Riptide'
);
```

# --seed--

## --before-user-code--

```js
const _recordCollection = {
  2548: {
    albumTitle: 'Slippery When Wet',
    artist: 'Bon Jovi',
    tracks: ['Let It Rock', 'You Give Love a Bad Name']
  },
  2468: {
    albumTitle: '1999',
    artist: 'Prince',
    tracks: ['1999', 'Little Red Corvette']
  },
  1245: {
    artist: 'Robert Palmer',
    tracks: []
  },
  5439: {
    albumTitle: 'ABBA Gold'
  }
};
```

## --seed-contents--

```js
// Setup
const recordCollection = {
  2548: {
    albumTitle: 'Slippery When Wet',
    artist: 'Bon Jovi',
    tracks: ['Let It Rock', 'You Give Love a Bad Name']
  },
  2468: {
    albumTitle: '1999',
    artist: 'Prince',
    tracks: ['1999', 'Little Red Corvette']
  },
  1245: {
    artist: 'Robert Palmer',
    tracks: []
  },
  5439: {
    albumTitle: 'ABBA Gold'
  }
};

// Only change code below this line
function updateRecords(records, id, prop, value) {
  return records;
}

updateRecords(recordCollection, 5439, 'artist', 'ABBA');
```

# --solutions--

```js
const recordCollection = {
  2548: {
    albumTitle: 'Slippery When Wet',
    artist: 'Bon Jovi',
    tracks: ['Let It Rock', 'You Give Love a Bad Name']
  },
  2468: {
    albumTitle: '1999',
    artist: 'Prince',
    tracks: ['1999', 'Little Red Corvette']
  },
  1245: {
    artist: 'Robert Palmer',
    tracks: []
  },
  5439: {
    albumTitle: 'ABBA Gold'
  }
};

// Only change code below this line
function updateRecords(records, id, prop, value) {
  if (value === '') delete records[id][prop];
  else if (prop === 'tracks') {
    records[id][prop] = records[id][prop] || [];
    records[id][prop].push(value);
  } else {
    records[id][prop] = value;
  }

  return records;
}
```
