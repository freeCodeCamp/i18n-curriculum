---
id: 618a0b2befb143baefab632b
title: الخطوة 32
challengeType: 0
dashedName: step-32
---

# --description--

لاحظ أن اللونين الأحمر والسماوي ساطعان جدًا بجانب بعضهما مباشرة. هذا التباين قد يشتت الانتباه إذا استُخدم بشكل مفرط على موقع الويب، وقد يصعب قراءة النص إذا وُضع على خلفية بلون تكميلي.

من الأفضل اختيار لون واحد كلون سائد، واستخدام لونه التكميلي كلون تكميلي لجذب الانتباه إلى محتوى معين في الصفحة.

أولًا، في قاعدة `h1`، استخدم الدالة `rgb` لتعيين خاصية `background-color` إلى اللون السماوي.

# --hints--

لا يجب إزالة خاصية `text-align` أو تعديل قيمتها.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign, 'center');
```

يجب أن تحتوي قاعدة CSS الخاصة بـ `h1` على خاصية `background-color` مضبوطة على `rgb(0, 255, 255)`.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor, 'rgb(0, 255, 255)');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
      <div class="marker one">
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
--fcc-editable-region--
  
--fcc-editable-region--
}

.container {
  background-color: rgb(255, 255, 255);
  padding: 10px 0;
}

.marker {
  width: 200px;
  height: 25px;
  margin: 10px auto;
}

.one {
  background-color: rgb(255, 0, 0);
}

.two {
  background-color: rgb(0, 255, 255);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
