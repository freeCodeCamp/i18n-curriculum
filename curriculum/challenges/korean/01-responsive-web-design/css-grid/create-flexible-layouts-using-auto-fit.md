---
id: 5a94fe6269fb03452672e462
title: auto-fit으로 유연한 레이아웃 생성하기
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/c3dPph8'
forumTopicId: 301127
dashedName: create-flexible-layouts-using-auto-fit
---

# --description--

`auto-fit`은 `auto-fill`과 거의 비슷하게 동작합니다. 유일한 차이점은 컨테이너의 크기가 모든 항목들의 결합된 크기를 초과할 때, `auto-fill`은 빈 행이나 열을 계속 삽입하고 항목들을 측면으로 밀어내는 반면, `auto-fit`은 그러한 빈 행이나 열을 축소하고 항목들을 컨테이너의 크기에 맞게 늘린다는 것입니다.

**주의:** 컨테이너가 한 행에 모든 아이템을 담을 수 없다면 아이템은 다음 행에 위치하게 됩니다.

# --instructions--

두번째 그리드에서 최소 `60px`과 최대 `1fr` 너비를 가진 열로 그리드를 채우도록 `repeat`와 `auto-fit`을 사용하세요. 그런 다음에 차이를 확인하기 위해 미리보기의 크기를 조정하세요.

# --hints--

`container2` 클래스는 최소 `60px`과 최대 `1fr` 너비를 가진 열로 grid를 채우는 `repeat`와 `auto-fit`을 가진 `grid-template-columns` 속성을 가져야 합니다.

```js
assert.match(
  code,
  /.container2\s*?{[\s\S]*grid-template-columns\s*?:\s*?repeat\s*?\(\s*?auto-fit\s*?,\s*?minmax\s*?\(\s*?60px\s*?,\s*?1fr\s*?\)\s*?\)\s*?;[\s\S]*}/gi
);
```

# --seed--

## --seed-contents--

```html
<style>
  .item1 {
    background: LightSkyBlue;
  }
  .item2 {
    background: LightSalmon;
  }
  .item3 {
    background: PaleTurquoise;
  }
  .item4 {
    background: LightPink;
  }
  .item5 {
    background: PaleGreen;
  }

  .container {
    font-size: 40px;
    min-height: 100px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(60px, 1fr));
    grid-template-rows: 1fr 1fr 1fr;
    grid-gap: 10px;
  }

  .container2 {
    font-size: 40px;
    min-height: 100px;
    width: 100%;
    background: Silver;
    display: grid;
    /* Only change code below this line */

    grid-template-columns: repeat(3, minmax(60px, 1fr));

    /* Only change code above this line */
    grid-template-rows: 1fr 1fr 1fr;
    grid-gap: 10px;
  }
</style>

<div class="container">
  <div class="item1">1</div>
  <div class="item2">2</div>
  <div class="item3">3</div>
  <div class="item4">4</div>
  <div class="item5">5</div>
</div>
<div class="container2">
  <div class="item1">1</div>
  <div class="item2">2</div>
  <div class="item3">3</div>
  <div class="item4">4</div>
  <div class="item5">5</div>
</div>
```

# --solutions--

```html
<style>
  .container {
    grid-template-columns: repeat(auto-fill, minmax(60px, 1fr));
  }
  .container2 {
    grid-template-columns: repeat(auto-fit, minmax(60px, 1fr));
  }
</style>
```
