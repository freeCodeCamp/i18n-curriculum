---
id: 56533eb9ac21ba0edf2244cb
title: معالجة الكائنات المعقدة (Manipulating Complex Objects)
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9yNMfR'
forumTopicId: 18208
dashedName: manipulating-complex-objects
---

# --description--

Sometimes you may want to store data in a flexible <dfn>Data Structure</dfn>. A JavaScript object is one way to handle flexible data. They allow for arbitrary combinations of <dfn>strings</dfn>, <dfn>numbers</dfn>, <dfn>booleans</dfn>, <dfn>arrays</dfn>, <dfn>functions</dfn>, and <dfn>objects</dfn>.

إليك مثال لهيكل بيانات معقد:

```js
const ourMusic = [
  {
    "artist": "Daft Punk",
    "title": "Homework",
    "release_year": 1997,
    "formats": [ 
      "CD", 
      "Cassette", 
      "LP"
    ],
    "gold": true
  }
];
```

هذه قائمة تحتوي على كائن واحد داخلها. يحتوي الكائن على أجزاء مختلفة من البيانات الوصفية إي <dfn>بيانات وصفية</dfn> حول مجموعة الصور. وهو إلى ذلك, يحتوي على قائمة داخلية تدعي `formats`. إذا كنت ترغب في إضافة المزيد من سجلات الصور، يمكنك فعل ذلك عن طريق إضافة السجلات إلى القائمة العليا. تخزن كائنات البيانات في الخواص التي لها قيمة وهُوِيَّة (key-value). وفي المثال الوارد أعلاه، `"artist": "Daft Punk"` هي خاصية لها هُوِيَّة تدعى `artist` وقيمة `Daft Punk`.

**ملاحظة:** ستحتاج إلى وضع فاصلة بعد كل كائن في القائمة، إلا إذا كان كائن في القائمة أخير.

# --instructions--

أضف السجلات الصور جديد إلى قائمة `myMusic`. أضف مقاطع `artist`, و `title`, و رَقْم `release_year`، و قائمة من المقاطع تدعي `formats`.

# --hints--

يجب أن تكون `myMusic` قائمة

```js
assert(Array.isArray(myMusic));
```

يجب أن يحتوي `myMusic` على عنصرين في الأقل

```js
assert(myMusic.length > 1);
```

يجب أن تكون العناصر في `myMusic` كائنات

```js
myMusic.forEach(object => {assert.typeOf(object, 'object')})
```

الكائن الخاص بك في `myMusic` يجب أن يحتوي على 4 خصائص في الأقل

```js
myMusic.forEach(object => {assert(Object.keys(object).length > 3); });
```

يجب أن يحتوي الكائن الخاص بك في `myMusic` على الخاصية `artist` التي من نوع مقطع

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['artist']);
  assert.typeOf(object.artist, 'string')
})
```

يجب أن يحتوي الكائن الخاص بك في `myMusic` على الخاصية `title` التي من نوع مقطع

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['title']);
  assert.typeOf(object.title, 'string')
})
```

يجب أن يحتوي الكائن الخاص بك في `myMusic` على الخاصية `release_year` التي من نوع رَقْم

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['release_year']);
  assert.typeOf(object.release_year, 'number')
})
```

يجب أن يحتوي الكائن الخاص بك في `myMusic` على الخاصية `formats` التي من نوع قائمة

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['formats']);
  assert.typeOf(object.formats, 'array')
})
```

يجب أن تكون `formats` قائمة من مقاطع ذات عنصرين في الأقل

```js
myMusic.forEach(object => {
  object.formats.forEach(format => {
    assert.typeOf(format, 'string')
  });
  assert.isAtLeast(object.formats.length, 2)
})
```

# --seed--

## --after-user-code--

```js
(function(x){ if (Array.isArray(x)) { return JSON.stringify(x); } return "myMusic is not an array"})(myMusic);
```

## --seed-contents--

```js
const myMusic = [
  {
    "artist": "Billy Joel",
    "title": "Piano Man",
    "release_year": 1973,
    "formats": [
      "CD",
      "8T",
      "LP"
    ],
    "gold": true
  }
];
```

# --solutions--

```js
const myMusic = [
  {
    "artist": "Billy Joel",
    "title": "Piano Man",
    "release_year": 1973,
    "formats": [
      "CS",
      "8T",
      "LP" ],
    "gold": true
  },
  {
    "artist": "ABBA",
    "title": "Ring Ring",
    "release_year": 1973,
    "formats": [
      "CS",
      "8T",
      "LP",
    "CD",
  ]
  }
];
```
