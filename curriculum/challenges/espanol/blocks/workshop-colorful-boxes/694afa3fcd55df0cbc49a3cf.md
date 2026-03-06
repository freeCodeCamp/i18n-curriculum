---
id: 694afa3fcd55df0cbc49a3cf
title: Paso 2
challengeType: 0
dashedName: step-2
---

# --description--

Ahora enlaza tu archivo `styles.css` al documento HTML.

# --hints--

Debes tener un elemento `link` dentro del elemento `head`.

```js
assert.exists(document.querySelector('head > link'));
```

Tu elemento `link` debe tener un atributo `rel`.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

Tu elemento `link` debe tener un atributo `rel` establecido en `stylesheet`.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

Tu elemento `link` debe tener un atributo `href` establecido en `styles.css`.

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
