---
id: 587d7b7d367417b2b2512b1d
title: 객체의 키를 for...in 문으로 반복하기
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

이 코드는 각 키-값 쌍이 각각의 줄에 있는 `milk 1` 및 `egg 12`을 기록합니다.

루프의 머리에 변수 `food`를 정의했으며 이 변수는 매 순환 때 해당 객체의 각각의 키로 설정되어 콘솔에 각 음식의 이름이 출력됩니다.

**주의:** 객체는 배열과 같이 저장된 키에 대한 순서를 유지하지 않습니다. 따라서 객체 내의 키 위치나 나타나는 상대적인 순서는 해당 키를 참조하거나 액세스할 때 관련이 없습니다.

# --instructions--

`allUsers`를 인자로 받는 `countOnline` 함수를 정의했습니다. `allUsers`를 순환하고 `online` 속성이 `true`로 설정된 사용자의 숫자를 반환하도록 이 함수 안에 <dfn>for...in</dfn> 문을 사용하시오. `countOnline`이 전달되는 객체의 예시는 아래와 같습니다. 각 사용자는 `true`나 `false`로 설정된 `online` 속성을 가질 것입니다.

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

함수 `countOnline`은 전달된 객체의 객체 키를 반복하는 데 `for in` 문을 사용해야 합니다.

```js
assert.match(
  __helpers.removeJSComments(code),
    /for\s*\(\s*(var|let|const)\s+[a-zA-Z_$]\w*\s+in\s+[a-zA-Z_$]\w*\s*\)/
);
```

함수 `countOnline`은 전달된 객체가 `{ Alan: { online: false }, Jeff: { online: true }, Sarah: { online: false } }`인 경우 `1`을 반환해야 합니다.

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

함수`countOnline`은 전달된 객체가 `{ Alan: { online: true }, Jeff: { online: false }, Sarah: { online: true } }` 인 경우 `2`을 반환해야 합니다.

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

함수`countOnline`은 전달된 객체가 `{ Alan: { online: false }, Jeff: { online: false }, Sarah: { online: false } }` 인 경우 `0`을 반환해야 합니다.

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
