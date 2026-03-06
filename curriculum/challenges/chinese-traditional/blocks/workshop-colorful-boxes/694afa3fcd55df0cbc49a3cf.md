---
id: 694afa3fcd55df0cbc49a3cf
title: 步驟 2
challengeType: 0
dashedName: step-2
---

# --description--

現在將你的 `styles.css` 檔案連結到 HTML 文件。

# --hints--

你應該在 `head` 元素內有一個 `link` 元素。

```js
assert.exists(document.querySelector('head > link'));
```

你的 `link` 元素應該有一個 `rel` 屬性。

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

你的 `link` 元素應該有一個設定為 `stylesheet` 的 `rel` 屬性。

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

你的 `link` 元素應該有一個設定為 `styles.css` 的 `href` 屬性。

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
