---
id: 694afa3fcd55df0cbc49a3cf
title: Passo 2
challengeType: 0
dashedName: step-2
---

# --description--

Agora vincule seu arquivo `styles.css` ao documento HTML.

# --hints--

Você deve ter um `link` elemento dentro do `head` elemento.

```js
assert.exists(document.querySelector('head > link'));
```

Seu `link` elemento deve ter um `rel` atributo.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

O elemento `link` deve ter um atributo `rel` definido como `stylesheet`.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

Seu `link` elemento deve ter um `href` atributo definido para `styles.css`.

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
