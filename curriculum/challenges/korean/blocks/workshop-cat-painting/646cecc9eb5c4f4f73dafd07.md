---
id: 646cecc9eb5c4f4f73dafd07
title: Step 23
challengeType: 0
dashedName: step-23
---

# --description--

왼쪽 귀를 위치시키려면 `absolute`의 위치, `top`의 `-26px`, 그리고 `left`의 `-31px`를 설정하세요.

# --hints--

`.cat-left-ear` 선택자에 `position`로 설정된 `absolute` 속성이 있어야 합니다. 세미콜론을 잊지 마세요.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('.cat-left-ear')?.position, 'absolute')
```

`.cat-left-ear` 선택자에 `top`로 설정된 `-26px` 속성이 있어야 합니다.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('.cat-left-ear')?.top, '-26px')
```

`.cat-left-ear` 선택자에 `left`로 설정된 `-31px` 속성이 있어야 합니다.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('.cat-left-ear')?.left, '-31px')
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>fCC Cat Painting</title>
    <link rel="stylesheet" href="./styles.css">
</head>
<body>
    <main>
      <div class="cat-head">
        <div class="cat-ears">
          <div class="cat-left-ear">
            <div class="cat-left-inner-ear"></div>
          </div>
          <div class="cat-right-ear">
            <div class="cat-right-inner-ear"></div>
          </div>
        </div>
      </div>
    </main>
</body>
</html>
```

```css
* {
  box-sizing: border-box;
}

body {
  background-color: #c9d2fc;
}

.cat-head {
  position: absolute;
  right: 0;
  left: 0;
  top: 0;
  bottom: 0;
  margin: auto;
  background: linear-gradient(#5e5e5e 85%, #45454f 100%);
  width: 205px;
  height: 180px;
  border: 1px solid #000;
  border-radius: 46%;
}

--fcc-editable-region--
.cat-left-ear {
  
  border-left: 35px solid transparent;
  border-right: 35px solid transparent;
  border-bottom: 70px solid #5e5e5e;
}
--fcc-editable-region--
```
