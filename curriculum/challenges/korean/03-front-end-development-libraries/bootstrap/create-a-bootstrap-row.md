---
id: bad87fee1348bd9bec908846
title: 부트스트랩 행 생성하기
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

Now we'll create a Bootstrap row for our inline elements.

`h3`태그 아래에 `div` 요소를 생성하고, `row` 클래스를 지정해주세요.

# --hints--

`h3` 요소 아래에 `div` 요소를 추가해야 합니다.

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

`div` 요소에는 `row` 클래스가 있어야 합니다.

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

`row div`는 `container-fluid div` 안에 들어있어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

`div` 요소는 닫는 태그를 가져야 합니다.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>

</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row"></div>
</div>
```
