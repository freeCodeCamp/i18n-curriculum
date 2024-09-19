---
id: a10d2431ad0c6a099a4b8b52
title: 모든 것이 참
challengeType: 1
forumTopicId: 16011
dashedName: everything-be-true
---

# --description--

컬렉션(첫 번째 인수)의 모든 요소에 대해 술부(두 번째 인수)가 <dfn>참</dfn>인지 확인하십시오.

다시 말해서, 객체의 배열 컬렉션이 주어집니다. 술부 `pre`는 객체의 속성이 될 것이며, 그 값이 `truthy`인 경우 `true`를 반환해야 합니다. 그렇지 않으면 `false`를 반환합니다.

자바스크립트에서 `truthy` 값은 불리언 문맥에서 평가될 때 `true`로 변환되는 값입니다.

객체의 프로퍼티에 점 표기법이나 `[]` 표기법을 통해 접근할 수 있다는 것을 기억하세요.

# --hints--

`truthCheck([{name: "Quincy", role: "Founder", isBot: false}, {name: "Naomi", role: "", isBot: false}, {name: "Camperbot", role: "Bot", isBot: true}], "isBot")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Quincy", role: "Founder", isBot: false },
    { name: "Naomi", role: "", isBot: false },
    { name: "Camperbot", role: "Bot", isBot: true }
  ],
  "isBot"), false);
```

`truthCheck([{name: "Quincy", role: "Founder", isBot: false}, {name: "Naomi", role: "", isBot: false}, {name: "Camperbot", role: "Bot", isBot: true}], "name")`는 `true`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Quincy", role: "Founder", isBot: false },
    { name: "Naomi", role: "", isBot: false },
    { name: "Camperbot", role: "Bot", isBot: true }
  ],
  "name"), true);
```

`truthCheck([{name: "Quincy", role: "Founder", isBot: false}, {name: "Naomi", role: "", isBot: false}, {name: "Camperbot", role: "Bot", isBot: true}], "role")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Quincy", role: "Founder", isBot: false },
    { name: "Naomi", role: "", isBot: false },
    { name: "Camperbot", role: "Bot", isBot: true }
  ],
  "role"), false);
```

`truthCheck([{name: "Pikachu", number: 25, caught: 3}, {name: "Togepi", number: 175, caught: 1}], "number")`는 `true`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Pikachu", number: 25, caught: 3 },
    { name: "Togepi", number: 175, caught: 1 },
  ],
  "number"), true);
```

`truthCheck([{name: "Pikachu", number: 25, caught: 3}, {name: "Togepi", number: 175, caught: 1}, {name: "MissingNo", number: NaN, caught: 0}], "caught")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Pikachu", number: 25, caught: 3 },
    { name: "Togepi", number: 175, caught: 1 },
    { name: "MissingNo", number: NaN, caught: 0 },
  ],
  "caught"), false);
```

`truthCheck([{name: "Pikachu", number: 25, caught: 3}, {name: "Togepi", number: 175, caught: 1}, {name: "MissingNo", number: NaN, caught: 0}], "number")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Pikachu", number: 25, caught: 3 },
    { name: "Togepi", number: 175, caught: 1 },
    { name: "MissingNo", number: NaN, caught: 0 },
  ],
  "number"), false);
```

`truthCheck([{name: "Quincy", username: "QuincyLarson"}, {name: "Naomi", username: "nhcarrigan"}, {name: "Camperbot"}], "username")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "Quincy", username: "QuincyLarson" },
    { name: "Naomi", username: "nhcarrigan" },
    { name: "Camperbot" }
  ],
  "username"), false);
```

`truthCheck([{name: "freeCodeCamp", users: [{name: "Quincy"}, {name: "Naomi"}]}, {name: "Code Radio", users: [{name: "Camperbot"}]}, {name: "", users: []}], "users")`는 `true`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { name: "freeCodeCamp", users: [{ name: "Quincy" }, { name: "Naomi" }] },
    { name: "Code Radio", users: [{ name: "Camperbot" }] },
    { name: "", users: [] },
  ],
  "users"), true);
```

`truthCheck([{id: 1, data: {url: "https://freecodecamp.org", name: "freeCodeCamp"}}, {id: 2, data: {url: "https://coderadio.freecodecamp.org/", name: "CodeRadio"}}, {id: null, data: {}}], "data")`는 `true`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { id: 1, data: { url: "https://www.freecodecamp.org", name: "freeCodeCamp" } },
    { id: 2, data: { url: "https://coderadio.freecodecamp.org/", name: "CodeRadio" } },
    { id: null, data: {} },
  ],
  "data"), true);
```

`truthCheck([{id: 1, data: {url: "https://freecodecamp.org", name: "freeCodeCamp"}}, {id: 2, data: {url: "https://coderadio.freecodecamp.org/", name: "CodeRadio"}}, {id: null, data: {}}], "id")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(truthCheck(
  [
    { id: 1, data: { url: "https://www.freecodecamp.org", name: "freeCodeCamp" } },
    { id: 2, data: { url: "https://coderadio.freecodecamp.org/", name: "CodeRadio" } },
    { id: null, data: {} },
  ],
  "id"), false);
```

# --seed--

## --seed-contents--

```js
function truthCheck(collection, pre) {
  return pre;
}

truthCheck([{name: "Quincy", role: "Founder", isBot: false}, {name: "Naomi", role: "", isBot: false}, {name: "Camperbot", role: "Bot", isBot: true}], "isBot");
```

# --solutions--

```js
function truthCheck(collection, pre) {
  return collection.every(function(e) { return e[pre]; });
}
```
