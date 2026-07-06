---
id: 66bf6bacf178eac7b96d4f5e
title: بناء مبدل أيقونة المفضلة
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

في هذا المختبر ستستخدم أحداث النقر في JavaScript لتبديل مظهر أيقونة المفضلة. عند نقر أيقونة القلب، يتغير مظهر القلب من فارغ إلى ممتلئ، والعكس صحيح.

**الهدف:** نفذ قصص المستخدم أدناه واجعل جميع الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تحتوي على قائمة غير مرتبة بها ثلاثة عناصر.
2. يجب أن تحتوي القائمة غير المرتبة على الصنف `item-list`.
3. يجب أن تحتوي العناصر الثلاثة في القائمة على اسم العنصر متبوعًا بعنصر `button` يحمل الصنف `favorite-icon`.
4. يجب أن يحتوي عنصر الـ `button` في البداية على الرمز `&#9825;` لتمثيل قلب فارغ.
5. عند نقر عنصر `button` الذي يحتوي على قلب، يجب إضافة الصنف `filled` إلى الـ `button` الذي تم النقر عليه إذا لم يكن موجودًا، وإزالته إذا كان موجودًا.
6. يجب أن يكون لديك محدد صنف يستهدف الصنف `filled` ويضبط بعض خصائص CSS.
7. عند نقر عنصر `button` الذي يحتوي على قلب، يجب أن يتبدل رمز القلب بين `&#9825;` (قلب فارغ) و `&#10084;` (قلب مملوء)، حسب الحالة الحالية.

**ملاحظة:** تأكد من ربط ملف JavaScript الخاص بك في ملف HTML. (مثال: `<script src="script.js"></script>`)

# --hints--

يجب أن يكون لديك قائمة غير مرتبة.

```js
assert.exists(document.querySelector('ul'));
```

يجب أن تحتوي القائمة غير المرتبة على 3 عناصر.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

يجب أن تحتوي القائمة غير المرتبة على الصنف `item-list`.

```js
assert.exists(document.querySelector('ul.item-list'));
```

يجب أن تحتوي عناصر القائمة الفردية على اسم العنصر.

```js
assert.exists(document.querySelector('ul li').textContent);
```

يجب أن يحتوي عنصر القائمة الفردي على عنصر `button` يحمل الصنف `favorite-icon`.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

في البداية، يجب أن تحتوي عناصر `button` على الشفرة `&#9825;` لتمثيل قلب فارغ.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

يجب أن يكون لديك محدد `.filled` يضبط بعض خصائص CSS.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

عند نقر عنصر الـ `button` واحتوائه على الصنف `filled`، يجب إزالة الصنف `filled` من عنصر الـ `button` وتغيير محتوى innerHTML لعنصر الـ `button` إلى `&#9825;`.

```js
const buttonElements = document.querySelectorAll('.favorite-icon');
assert.isNotEmpty(buttonElements);

buttonElements.forEach(button => button.classList.add('filled'));

buttonElements.forEach(button => {
  button.dispatchEvent(new Event('click', { bubbles: true }));
  assert.isFalse(button.classList.contains('filled'));
  assert.equal(button.innerHTML.charCodeAt(0), 9825);
});
```

عند نقر عنصر `button`، وإذا لم يكن يحتوي على الصنف `filled`، يجب إضافة الصنف `filled` إلى عنصر `button` وتغيير محتوى `innerHTML` لعنصر `button` إلى `&#10084;`.

```js
const buttonElements = document.querySelectorAll('.favorite-icon');
assert.isNotEmpty(buttonElements);

buttonElements.forEach(button => button.classList.remove('filled'));

buttonElements.forEach(button => {
  button.dispatchEvent(new Event('click', { bubbles: true }));
  assert.isTrue(button.classList.contains('filled'));
  assert.equal(button.innerHTML.charCodeAt(0), 10084);
});
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Favorite Icon Toggler</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>
  
  </body>
</html>
```

```css

```

```js

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Favorite Icon Toggle</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>
    <h1>Art Supplies</h1>
    <ul class="item-list">
      <li>
        120 gm paper
        <button class="favorite-icon" id="favoriteIcon1">&#9825;</button>
      </li>
      <li>
        Watercolor set
        <button class="favorite-icon" id="favoriteIcon2">&#9825;</button>
      </li>
      <li>
        Lead pencil 6B
        <button class="favorite-icon" id="favoriteIcon3">&#9825;</button>
      </li>
    </ul>

    <script src="script.js"></script>
  </body>
</html>
```

```css
body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  font-family: Arial, sans-serif;
}

h1 {
  margin-bottom: 20px;
}

.item-list {
  list-style-type: none;
  padding: 0;
}

.item-list li {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  border-bottom: 1px solid #ddd;
  width: 200px;
}

.favorite-icon {
  font-size: 1.25rem;
  background-color: transparent;
  border: none;
  cursor: pointer;
}

.filled {
  color: #d22b2b;
}
```

```js
document.addEventListener("DOMContentLoaded", () => {
  const favoriteIcons = document.querySelectorAll(".favorite-icon");

  favoriteIcons.forEach(icon => {
    icon.addEventListener("click", () => {
      if (icon.classList.contains("filled")) {
        icon.classList.remove("filled");
        icon.innerHTML = "&#9825;"; // Empty heart
      } else {
        icon.classList.add("filled");
        icon.innerHTML = "&#10084;"; // Filled black heart
      }
    });
  });
});
```
