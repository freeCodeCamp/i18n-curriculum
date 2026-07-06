---
id: 68ef1eda8fdbe33f87cfc71d
title: الخطوة 30
challengeType: 0
dashedName: step-30
---

# --description--

القيمة الثانية من خاصية `flex` تُعيّن خاصية `flex-shrink`. تتحكم هذه الخاصية في مقدار انكماش العنصر المرن عندما لا تتوفر مساحة كافية في الحاوية لجميع العناصر.

لا تزال داخل محدِّد `.box`، غيّر القيمة الثانية في `flex` من `1` إلى `0`.

# --hints--

يجب أن يحتوي محدِّد `.box` على خاصية `flex` بقيمة `0 0 100px`.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('.box')?.getPropVal('flex'), '0 0 100px');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Colored Boxes</title>
	<link rel="stylesheet" href="styles.css" />
</head>
<body>
	<header>
		<h1>Colored Boxes Layout</h1>
	</header>
	<div class="flex-container">
		<div class="box">
			<h2>Box 1</h2>
			<p>Red</p>
		</div>
		<div class="box">
			<h2>Box 2</h2>
			<p>Orange</p>
		</div>
		<div class="box">
			<h2>Box 3</h2>
			<p>Yellow</p>
		</div>
		<div class="box">
			<h2>Box 4</h2>
			<p>Green</p>
		</div>
		<div class="box">
			<h2>Box 5</h2>
			<p>Blue</p>
		</div>
		<div class="box">
			<h2>Box 6</h2>
			<p>Indigo</p>
		</div>
	</div>
</body>
</html>
```

```css
h1 {
	text-align: center;
	margin-bottom: 10px;
}

.box {
	max-height: 120px;
	color: #000;
	border: 1px solid #000;
	display: flex;
--fcc-editable-region-- 
	flex: 0 1 100px;
--fcc-editable-region-- 
	flex-direction: column;
	align-items: center;
	margin: 10px;
	font-weight: bold;
	font-size: 1.125rem;
	border-radius: 5px;
	order: 0;
}

.flex-container {
	display: flex;
	flex-wrap: wrap;
	width: 70%;
	height: 600px;
	padding: 10px;
	margin: 20px auto;
	align-content: space-evenly;
}
```
