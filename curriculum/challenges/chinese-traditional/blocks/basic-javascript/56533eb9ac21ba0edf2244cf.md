---
id: 56533eb9ac21ba0edf2244cf
title: 記錄集合
challengeType: 1
forumTopicId: 18261
dashedName: record-collection
---

# --description--

You are creating a function that aids in the maintenance of a musical album collection. The collection is organized as an object that contains multiple albums which are also objects. Each album is represented in the collection with a unique `id` as the property name. Within each album object, there are various properties describing information about the album. Not all albums have complete information.

`updateRecords` 函數有 4 個參數，即以下參數：

-   `records` - an object containing several individual albums
-   `id` - a number representing a specific album in the `records` object
-   `prop` - a string representing the name of the album’s property to update
-   `value` - a string containing the information used to update the album’s property

使用下面的規則完成函數來修改傳遞給函數的對象。

-   Your function must always return the entire `records` object.
-   如果 `value` 是空字符串，從專輯裏刪除指定的 `prop`。
-   如果 `prop` 不是 `tracks`，並且 `value` 不是一個空字符串，將 `value` 賦給那個專輯的 `prop`。
-   如果 `prop` 是 `tracks` 並且 `value` 不是空字符串，但是專輯沒有 `tracks` 屬性，爲該屬性創建一個空數組並添加 `value` 作爲其元素。
-   如果 prop 是 `tracks` 並且 `value` 不是一個空字符串，將 `value` 添加到專輯現有 `tracks` 數組的末尾。

**注意：** 將 `recordCollection` 對象的副本用於測試。 你不應該直接修改 `recordCollection` 對象。

# --hints--

執行 `updateRecords(recordCollection, 5439, "artist", "ABBA")` 後，`artist` 的值應該是字符串 `ABBA`。

```js
assert(
  updateRecords(_recordCollection, 5439, 'artist', 'ABBA')[5439]['artist'] ===
    'ABBA'
);
```

執行 `updateRecords(recordCollection, 5439, "tracks", "Take a Chance on Me")` 後，`tracks` 的最後一個和唯一一個元素應該爲字符串 `Take a Chance on Me`。

```js
assert(
  updateRecords(_recordCollection, 5439, 'tracks', 'Take a Chance on Me') &&
  _recordCollection[5439]['tracks'].length === 1 &&
  _recordCollection[5439]['tracks'].pop() === 'Take a Chance on Me'
);
```

執行 `updateRecords(recordCollection, 2548, "artist", "")` 後，`artist` 不應被設置爲任何值。

```js
updateRecords(_recordCollection, 2548, 'artist', '');
assert(!_recordCollection[2548].hasOwnProperty('artist'));
```

執行 `updateRecords(recordCollection, 1245, "tracks", "Addicted to Love")` 後，`tracks` 的最後一個元素應該爲字符串 `Addicted to Love`。

```js
assert(
  updateRecords(_recordCollection, 1245, 'tracks', 'Addicted to Love')[1245][
    'tracks'
  ].pop() === 'Addicted to Love'
);
```

執行 `updateRecords(recordCollection, 2468, "tracks", "Free")` 後，`tracks` 的第一個元素應該爲字符串 `1999`。

```js
assert(
  updateRecords(_recordCollection, 2468, 'tracks', 'Free')[2468][
    'tracks'
  ][0] === '1999'
);
```

執行 `updateRecords(recordCollection, 2548, "tracks", "")` 後，`tracks` 不應被設置爲任何值。

```js
updateRecords(_recordCollection, 2548, 'tracks', '');
assert(!_recordCollection[2548].hasOwnProperty('tracks'));
```

執行 `updateRecords(recordCollection, 1245, "albumTitle", "Riptide")` 後，`albumTitle` 的值應該是字符串 `Riptide`。

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
