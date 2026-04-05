---
id: 68ec6e8d0caee3afaaf142ef
title: 8단계
challengeType: 0
dashedName: step-8
---

# --description--

관련된 내용을 그룹화하려면 `div` 요소 안에 여러 요소를 추가할 수 있습니다. `class`의 `card-container` 속성을 가진 요소 안에 또 다른 `div` 요소를 만드세요. 이 `div`는 첫 번째 책 카드로 나타냅니다.

이 새 `class` 요소에 `div` 속성을 추가하고 `class` 속성의 값을 `card`로 설정하세요.

# --hints--

`div` 클래스를 가진 요소 안에 `card-container` 요소가 중첩되어 있어야 합니다.

```js
assert.exists(document.querySelector('.card-container div'));
```

새로운 `div` 요소에 `class` 속성이 있어야 합니다.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

새로운 `div` 요소에 `class` 속성이 있고 그 값이 `card`여야 합니다.

```js
assert.exists(document.querySelector('.card-container div.card'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
  <h1>XYZ Bookstore</h1>
  <p>Browse our collection of amazing books!</p>
  
  <div class="card-container">
--fcc-editable-region--
    
--fcc-editable-region--
  </div>
</body>

</html>
```
