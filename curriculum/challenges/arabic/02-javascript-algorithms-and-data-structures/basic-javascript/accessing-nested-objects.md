---
id: 56533eb9ac21ba0edf2244cc
title: الوصول إلى الكائنات المتداخلة (Accessing Nested Objects)
challengeType: 1
videoUrl: 'https://scrimba.com/c/cRnRnfa'
forumTopicId: 16161
dashedName: accessing-nested-objects
---

# --description--

The sub-properties of objects can be accessed by chaining together the dot or bracket notation.

فيما يلي كائن متداخل (nested object):

```js
const ourStorage = {
  "desk": {
    "drawer": "stapler"
  },
  "cabinet": {
    "top drawer": { 
      "folder1": "a file",
      "folder2": "secrets"
    },
    "bottom drawer": "soda"
  }
};

ourStorage.cabinet["top drawer"].folder2;
ourStorage.desk.drawer;
```

سيكون `ourStorage.cabinet["top drawer"].folder2` مقطع (string) الآتي `secrets`, وسيكون `ourStorage.desk.drawer` مقطع (string) الآتي `stapler`.

# --instructions--

الوصول إلى الكائن `myStorage` وعيّن محتوى الخاصية `glove box` إلى المتغير `gloveBoxContents`. حاول استخدام النُّقَط (dot notation) للوصول للخصائص (properties) بقدر الإمكان، وإلا فيمكنك استخدام الأقواس[] (bracket notation).

# --hints--

يجب أن يساوي `gloveBoxContents` مقطع (string) الآتي `maps`.

```js
assert(gloveBoxContents === 'maps');
```

Your code should use dot notation, where possible, to access `myStorage`.

```js
assert.match(code, /myStorage\.car\.inside/);
```

`gloveBoxContents` يجب أن تكون معرفه علي أنها `const`.

```js
assert.match(code, /const\s+gloveBoxContents\s*=/);
```

You should not change the `myStorage` object.

```js
const expectedMyStorage = {
  "car":{
    "inside":{
      "glove box":"maps",
      "passenger seat":"crumbs"
    },
    "outside":{
      "trunk":"jack"
    }
  }
};
assert.deepStrictEqual(myStorage, expectedMyStorage);
```

# --seed--

## --after-user-code--

```js
(function(x) { 
  if(typeof x != 'undefined') { 
    return "gloveBoxContents = " + x;
  }
  return "gloveBoxContents is undefined";
})(gloveBoxContents);
```

## --seed-contents--

```js
const myStorage = {
  "car": {
    "inside": {
      "glove box": "maps",
      "passenger seat": "crumbs"
     },
    "outside": {
      "trunk": "jack"
    }
  }
};

const gloveBoxContents = undefined;
```

# --solutions--

```js
const myStorage = {
  "car":{
    "inside":{
      "glove box":"maps",
      "passenger seat":"crumbs"
    },
    "outside":{
      "trunk":"jack"
    }
  }
};
const gloveBoxContents = myStorage.car.inside["glove box"];
```
