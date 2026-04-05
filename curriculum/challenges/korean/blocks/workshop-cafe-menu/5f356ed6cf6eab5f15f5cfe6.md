---
id: 5f356ed6cf6eab5f15f5cfe6
title: Step 16
challengeType: 0
dashedName: step-16
---

# --description--

`div` 요소는 지금까지 사용한 다른 콘텐츠 요소와 달리 주로 디자인 레이아웃 목적으로 사용됩니다. `div` 요소 안에 `body` 요소를 추가한 다음, 나머지 모든 요소를 새 `div` 안으로 이동하세요.

여는 `div` 태그 안에 `id` 속성을 값 `menu`으로 추가하세요.

# --hints--

여는 `<div>` 태그에 `id` 속성이 `menu`으로 설정되어 있어야 합니다.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

닫는 `</div>` 태그가 있어야 합니다.

```js
assert.match(code, /<\/div>/i);
```

기존 `body` 요소를 변경하지 마세요. 닫는 태그를 삭제하지 않았는지 확인하세요.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

`div` 요소가 `body` 안에 중첩되어 있어야 합니다.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

나머지 모든 요소를 새 `div` 안으로 이동해야 합니다.

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
  <body>
--fcc-editable-region--
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
--fcc-editable-region--
  </body>
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
