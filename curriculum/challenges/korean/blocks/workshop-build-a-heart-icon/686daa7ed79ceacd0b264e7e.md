---
id: 686daa7ed79ceacd0b264e7e
title: 3단계
challengeType: 0
dashedName: step-3
---

# --description--

`path` 요소는 모양을 정의해야 합니다. 바로 이때 `d` 속성이 사용됩니다. 이 속성은 모양을 그리는 명령 문자와 숫자 시퀀스를 만드는데 사용됩니다.

이 문자들은 이동, 선 그리기, 닫기 같은 명령을 나타내고, 숫자는 좌표를 나타냅니다.

하트 모양의 `d` 속성을 `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`으로 설정하세요.

# --hints--

`d` 요소에 `path` 속성이 있어야 합니다.

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.exists(d);
```

`d` 속성을 `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`으로 설정해야 합니다.

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.strictEqual(
  d,
  'M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z'
);
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Heart Icon</title>
  </head>
  <body>
    <svg>
      <path
      --fcc-editable-region--
        
      --fcc-editable-region--
      ></path>
    </svg>
  </body>
</html>
```
