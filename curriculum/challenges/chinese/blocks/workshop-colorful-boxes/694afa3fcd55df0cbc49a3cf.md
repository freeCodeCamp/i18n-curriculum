---
id: 694afa3fcd55df0cbc49a3cf
title: 步骤2
challengeType: 0
dashedName: step-2
---

# --description--

现在将你的 `styles.css` 文件链接到超文本标记语言文档。

# --hints--

你应该在 `head` 元素内有一个 `link` 元素。

```js
assert.exists(document.querySelector('head > link'));
```

你的 `link` 元素应具有 `rel` 属性。

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

你的 `link` 元素应具有设置为 `stylesheet` 的 `rel` 属性。

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

你的 `link` 元素应具有设置为 `styles.css` 的 `href` 属性。

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
