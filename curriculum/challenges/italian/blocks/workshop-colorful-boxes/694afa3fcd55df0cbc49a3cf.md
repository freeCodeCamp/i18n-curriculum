---
id: 694afa3fcd55df0cbc49a3cf
title: Passaggio 2
challengeType: 0
dashedName: step-2
---

# --description--

Ora collega il tuo file `styles.css` al documento HTML.

# --hints--

Dovresti avere un elemento `link` all'interno dell'elemento `head`.

```js
assert.exists(document.querySelector('head > link'));
```

Il tuo elemento `link` dovrebbe avere un attributo `rel`.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

Il tuo elemento `link` dovrebbe avere un attributo `rel` impostato su `stylesheet`.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

Il tuo elemento `link` dovrebbe avere un attributo `href` impostato su `styles.css`.

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
