---
id: 56533eb9ac21ba0edf2244cf
title: Collezione di dischi
challengeType: 1
forumTopicId: 18261
dashedName: record-collection
---

# --description--

You are creating a function that aids in the maintenance of a musical album collection. The collection is organized as an object that contains multiple albums which are also objects. Each album is represented in the collection with a unique `id` as the property name. Within each album object, there are various properties describing information about the album. Not all albums have complete information.

La funzione `updateRecords` prende 4 argomenti rappresentati dai seguenti parametri di funzione:

-   `records` - an object containing several individual albums
-   `id` - a number representing a specific album in the `records` object
-   `prop` - a string representing the name of the album’s property to update
-   `value` - a string containing the information used to update the album’s property

Completa la funzione usando le regole sottostanti per modificare l'oggetto passato alla funzione.

-   Your function must always return the entire `records` object.
-   Se `value` è una stringa vuota, elimina la proprietà `prop` dall'album.
-   Se `prop` non è `tracks` e `value` non è una stringa vuota, assegna `value` alla `prop` di quell'album.
-   If `prop` is `tracks` and `value` isn't an empty string, but the album doesn't have a `tracks` property, create an empty array and add `value` to it.
-   If prop is `tracks` and `value` isn't an empty string, add `value` to the end of the album's existing `tracks` array.

**Nota:** una copia dell'oggetto `recordCollection` viene utilizzata per i test. Non dovresti modificare direttamente l'oggetto `recordCollection`.

# --hints--

Dopo aver eseguito `updateRecords(recordCollection, 5439, "artist", "ABBA")`, `artist` dovrebbe essere la stringa `ABBA`

```js
assert(
  updateRecords(_recordCollection, 5439, 'artist', 'ABBA')[5439]['artist'] ===
    'ABBA'
);
```

Dopo `updateRecords(recordCollection, 5439, "tracks", "Take a Chance on Me")`, `tracks` dovrebbe avere la stringa `Take a Chance on Me` come solo e ultimo elemento.

```js
assert(
  updateRecords(_recordCollection, 5439, 'tracks', 'Take a Chance on Me') &&
  _recordCollection[5439]['tracks'].length === 1 &&
  _recordCollection[5439]['tracks'].pop() === 'Take a Chance on Me'
);
```

Dopo `updateRecords(recordCollection, 2548, "artist", "")`, `artist` non dovrebbe essere impostato

```js
updateRecords(_recordCollection, 2548, 'artist', '');
assert(!_recordCollection[2548].hasOwnProperty('artist'));
```

Dopo `updateRecords(recordCollection, 1245, "tracks", "Addicted to Love")`, `tracks` dovrebbe avere la stringa `Addicted to Love` come ultimo elemento.

```js
assert(
  updateRecords(_recordCollection, 1245, 'tracks', 'Addicted to Love')[1245][
    'tracks'
  ].pop() === 'Addicted to Love'
);
```

Dopo `updateRecords(recordCollection, 2468, "tracks", "Free")`, `tracks` dovrebbe avere la stringa `1999` come primo elemento.

```js
assert(
  updateRecords(_recordCollection, 2468, 'tracks', 'Free')[2468][
    'tracks'
  ][0] === '1999'
);
```

Dopo `updateRecords(recordCollection, 2548, "tracks", "")`, `tracks` non dovrebbe essere impostato

```js
updateRecords(_recordCollection, 2548, 'tracks', '');
assert(!_recordCollection[2548].hasOwnProperty('tracks'));
```

Dopo `updateRecords(recordCollection, 1245, "albumTitle", "Riptide")`, `albumTitle` dovrebbe essere la stringa `Riptide`

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
