---
id: 694afa3fcd55df0cbc49a3cf
title: Крок 2
challengeType: 0
dashedName: step-2
---

# --description--

Тепер підключіть свій `styles.css` файл до HTML-документа.

# --hints--

У вас має бути `link` елемент всередині `head` елемента.

```js
assert.exists(document.querySelector('head > link'));
```

Ваш `link` елемент повинен мати `rel` атрибут.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

Ваш `link` елемент повинен мати `rel` атрибут, встановлений у `stylesheet`.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

Ваш `link` елемент повинен мати `href` атрибут, встановлений у `styles.css`.

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
