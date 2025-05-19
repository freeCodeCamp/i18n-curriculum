---
id: 587d7b7d367417b2b2512b1d
title: 使用 for...in 語句遍歷對象
challengeType: 1
forumTopicId: 301162
dashedName: iterate-through-the-keys-of-an-object-with-a-for---in-statement
---

# --description--

Sometimes you need to iterate through all the keys within an object. You can use a <dfn>for...in</dfn> loop to do this. The for...in loop looks like:

```javascript
const refrigerator = {
  'milk': 1,
  'eggs': 12,
};

for (const food in refrigerator) {
  console.log(food, refrigerator[food]);
}
```

以上代碼記錄 `milk 1` 和 `eggs 12`，每個鍵值對單獨爲一行。

我們在循環頭中定義了變量 `food` ，這個變量被設置爲每次迭代上對象的每個鍵值，將每個食物的名稱打印到控制檯。

**注意：**對象中的鍵是無序的，這與數組不同。 因此，一個對象中某個屬性的位置，或者說它出現的相對順序，在引用或訪問該屬性時是不確定的。

# --instructions--

我們定義了一個函數 `countOnline`，它接收一個參數 `allUsers`。 在這個函數中使用 <dfn>for...in</dfn> 語句來遍歷 `allUsers` 對象，並返回 `online` 屬性爲 `true` 的用戶數量。 一個可以傳遞給 `countOnline` 的對象的例子顯示如下。 每個用戶都有 `online` 屬性，其屬性值爲 `true` 或 `false`。

```js
{
  Alan: {
    online: false
  },
  Jeff: {
    online: true
  },
  Sarah: {
    online: false
  }
}
```

# --hints--

函數 `countOnline` 中應使用 `for in` 語句遍歷傳入的對象的對象鍵。

```js
assert.match(
  __helpers.removeJSComments(code),
    /for\s*\(\s*(var|let|const)\s+[a-zA-Z_$]\w*\s+in\s+[a-zA-Z_$]\w*\s*\)/
);
```

當傳入 `{ Alan: { online: false }, Jeff: { online: true }, Sarah: { online: false } }` 時，函數 `countOnline` 應該返回 `1`。

```js
const usersObj1 = {
  Alan: {
    online: false
  },
  Jeff: {
    online: true
  },
  Sarah: {
    online: false
  }
}
assert.equal(countOnline(usersObj1), 1);
```

當傳入 `{ Alan: { online: true }, Jeff: { online: false }, Sarah: { online: true } }` 時，函數 `countOnline` 應該返回 `2`。

```js
const usersObj2 = {
  Alan: {
    online: true
  },
  Jeff: {
    online: false
  },
  Sarah: {
    online: true
  }
}
assert.equal(countOnline(usersObj2), 2);
```

當傳入 `{ Alan: { online: false }, Jeff: { online: false }, Sarah: { online: false } }` 時，函數 `countOnline` 應該返回 `0`。

```js
const usersObj3 = {
  Alan: {
    online: false
  },
  Jeff: {
    online: false
  },
  Sarah: {
    online: false
  }
}
assert.equal(countOnline(usersObj3), 0);
```

# --seed--

## --seed-contents--

```js
const users = {
  Alan: {
    online: false
  },
  Jeff: {
    online: true
  },
  Sarah: {
    online: false
  }
}

function countOnline(allUsers) {
  // Only change code below this line

  // Only change code above this line
}

console.log(countOnline(users));
```

# --solutions--

```js
function countOnline(allUsers) {
  let numOnline = 0;
  for(const user in allUsers){
    if(allUsers[user].online) {
      numOnline++;
    }
  }
  return numOnline;
}
```
