---
id: 694afa3fcd55df0cbc49a3cf
title: Schritt 2
challengeType: 0
dashedName: step-2
---

# --description--

Verknüpfen Sie nun Ihre `styles.css`-Datei mit dem HTML-Dokument.

# --hints--

Sie sollten ein `link`-Element innerhalb des `head`-Elements haben.

```js
assert.exists(document.querySelector('head > link'));
```

Ihr `link`-Element sollte ein `rel`-Attribut besitzen.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

Ihr `link`-Element sollte ein `rel`-Attribut mit dem Wert `stylesheet` besitzen.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

Ihr `link`-Element sollte ein `href`-Attribut mit dem Wert `styles.css` besitzen.

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
