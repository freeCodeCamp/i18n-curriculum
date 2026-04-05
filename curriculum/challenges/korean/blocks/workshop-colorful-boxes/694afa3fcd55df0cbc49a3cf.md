---
id: 694afa3fcd55df0cbc49a3cf
title: 2단계
challengeType: 0
dashedName: step-2
---

# --description--

이제 `styles.css` 파일을 HTML 문서에 연결하세요.

# --hints--

`link` 요소 안에 `head` 요소가 있어야 합니다.

```js
assert.exists(document.querySelector('head > link'));
```

`link` 요소에는 `rel` 속성이 있어야 합니다.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

`link` 요소에는 `rel` 속성이 `stylesheet`로 설정되어 있어야 합니다.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

`link` 요소에는 `href` 속성이 `styles.css`로 설정되어 있어야 합니다.

```js
const linkHrefValue = document.querySelector('head > link')?.dataset?.href;
assert.match(linkHrefValue, /^(\.\/)?styles\.css$/);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Colored Boxes</title>
--fcc-editable-region--
	
--fcc-editable-region-- 
</head> 
<body>
	<header>
		<h1>Colored Boxes Layout</h1>
	</header>
</body>
</html>
```
