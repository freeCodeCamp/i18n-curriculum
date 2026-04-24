---
id: 694afa3fcd55df0cbc49a3cf
title: ステップ 2
challengeType: 0
dashedName: step-2
---

# --description--

`styles.css` ファイルを HTML ドキュメントにリンクしてください。

# --hints--

`link` 要素の中に `head` 要素があるはずです。

```js
assert.exists(document.querySelector('head > link'));
```

`link` 要素には `rel` 属性が必要です。

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

`link` 要素には `rel` 属性が `stylesheet` に設定されている必要があります。

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

`link` 要素には `href` 属性が `styles.css` に設定されている必要があります。

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
