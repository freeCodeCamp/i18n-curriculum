---
id: 56533eb9ac21ba0edf2244cf
title: Schallplattensammlung
challengeType: 1
forumTopicId: 18261
dashedName: record-collection
---

# --description--

You are creating a function that aids in the maintenance of a musical album collection. The collection is organized as an object that contains multiple albums which are also objects. Each album is represented in the collection with a unique `id` as the property name. Within each album object, there are various properties describing information about the album. Not all albums have complete information.

Die `updateRecords`-Funktion erwartet 4 Argumente, die durch die folgenden Funktionsparameter repräsentiert werden:

-   `records` - an object containing several individual albums
-   `id` - a number representing a specific album in the `records` object
-   `prop` - a string representing the name of the album’s property to update
-   `value` - a string containing the information used to update the album’s property

Vervollständige die Funktion mit Hilfe der folgenden Regeln, um das an die Funktion übergebene Objekt zu verändern.

-   Your function must always return the entire `records` object.
-   Falls `value` einen leeren String darstellt, lösche die angegebene `prop`-Eigenschaft aus dem Album.
-   Falls `prop` nicht `tracks` darstellt und `value` kein leerer String ist, dann weise `value` dem `prop` des jeweiligen Albums zu.
-   If `prop` is `tracks` and `value` isn't an empty string, but the album doesn't have a `tracks` property, create an empty array and add `value` to it.
-   Wenn prop `tracks` ist und `value` keinen leeren String darstellt, füge `value` an das Ende des bestehenden `tracks`-Arrays des Albums an.

**Hinweis:** Für die Tests wird eine Kopie des Objekts `recordCollection` verwendet. Du solltest das Objekt `recordCollection` nicht direkt anpassen.

# --hints--

Nachdem `updateRecords(recordCollection, 5439, "artist", "ABBA")` ausgeführt wurde, sollte `artist` den String `ABBA` darstellen

```js
assert(
  updateRecords(_recordCollection, 5439, 'artist', 'ABBA')[5439]['artist'] ===
    'ABBA'
);
```

Nachdem `updateRecords(recordCollection, 5439, "tracks", "Take a Chance on Me")` ausgeführt wurde, sollte `tracks` den String `Take a Chance on Me` als letztes und einziges Element enthalten.

```js
assert(
  updateRecords(_recordCollection, 5439, 'tracks', 'Take a Chance on Me') &&
  _recordCollection[5439]['tracks'].length === 1 &&
  _recordCollection[5439]['tracks'].pop() === 'Take a Chance on Me'
);
```

Nachdem `updateRecords(recordCollection, 2548, "artist", "")` ausgeführt wurde, sollte kein Wert für `artist` eingestellt sein

```js
updateRecords(_recordCollection, 2548, 'artist', '');
assert(!_recordCollection[2548].hasOwnProperty('artist'));
```

Nachdem `updateRecords(recordCollection, 1245, "tracks", "Addicted to Love")` ausgeführt wurde, sollte `tracks` den String `Addicted to Love` als letztes Element enthalten.

```js
assert(
  updateRecords(_recordCollection, 1245, 'tracks', 'Addicted to Love')[1245][
    'tracks'
  ].pop() === 'Addicted to Love'
);
```

Nachdem `updateRecords(recordCollection, 2468, "tracks", "Free")` ausgeführt wurde, sollte `tracks` den String `1999` als erstes Element enthalten.

```js
assert(
  updateRecords(_recordCollection, 2468, 'tracks', 'Free')[2468][
    'tracks'
  ][0] === '1999'
);
```

Nachdem `updateRecords(recordCollection, 2548, "tracks", "")` ausgeführt wurde, sollte kein Wert für `tracks` eingestellt sein

```js
updateRecords(_recordCollection, 2548, 'tracks', '');
assert(!_recordCollection[2548].hasOwnProperty('tracks'));
```

Nachdem `updateRecords(recordCollection, 1245, "albumTitle", "Riptide")` ausgeführt wurde, sollte `albumTitle` den String `Riptide` darstellen

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
