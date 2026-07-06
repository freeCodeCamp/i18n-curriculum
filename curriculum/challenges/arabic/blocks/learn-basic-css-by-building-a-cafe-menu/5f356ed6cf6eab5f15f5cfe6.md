---
id: 5f356ed6cf6eab5f15f5cfe6
title: الخطوة 20
challengeType: 0
dashedName: step-20
---

# --description--

يُستخدم عنصر `div` بشكل رئيسي لأغراض تصميم التخطيط، على عكس عناصر المحتوى الأخرى التي استخدمتها حتى الآن. أضف عنصر `div` داخل عنصر `body` ثم انقل جميع العناصر الأخرى داخل الـ `div` الجديد.

داخل وسم الفتح `div`، أضف الخاصية `id` بقيمة `menu`.

# --hints--

يجب أن يحتوي وسم الفتح `<div>` على خاصية `id` مضبوطة على `menu`.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

يجب أن يكون لديك وسم إغلاق `</div>`.

```js
assert(code.match(/<\/div>/i));
```

لا تغير عنصر `body` الموجود لديك. تأكد من عدم حذف وسم الإغلاق.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

يجب أن يكون عنصر `div` مسكنًا داخل عنصر `body`.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

يجب أن تنقل جميع العناصر الأخرى داخل الـ `div` الجديد.

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
--fcc-editable-region--
  <body>
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
  </body>
--fcc-editable-region--
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
