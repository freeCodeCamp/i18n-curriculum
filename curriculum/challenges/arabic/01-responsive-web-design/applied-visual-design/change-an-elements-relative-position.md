---
id: 587d781e367417b2b2512ac9
title: تغيير الموضع النسبي لعنصر معين
challengeType: 0
videoUrl: 'https://scrimba.com/c/czVmMtZ'
forumTopicId: 301044
dashedName: change-an-elements-relative-position
---

# --description--

CSS treats each HTML element as its own box, which is usually referred to as the <dfn>CSS Box Model</dfn>. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the <dfn>normal flow</dfn> of a document, but CSS offers the position property to override it.

عندما يُضبط موقع عنصر معين إلى نسبى `relative` ، هذا يتيح لك أن تحدد كيف ينبغى لــ CSS أن تحركه نسبياً *relative* إلى موقعه الحالى فى التدفق العادى للصفحة . إنها ترتبط مع خصائص CSS للتوازن (CSS offset properties) و هى `left` أو `right`، و `top` أو `bottom` . هذه الخصائص تحدد عدد البكسلات pixels ، النسبة المئوية، أو عدد وحدات الـ em لنقل عنصر *بعيداً* عن موضعه الطبيعى السابق . المثال التالى يُحرك الفقرة بمسافة 10 بكسلات بعيداً عن الأسفل :

```css
p {
  position: relative;
  bottom: 10px;
}
```

إن تغيير موقع عنصر ما إلى نسبى relative ، لا يزيله من التدفق العادى للصفحة - حيث أن العناصر الأخرى المحيطة به تتصرف كما لو أن هذا العنصر لايزال موجوداً فى موقعه الافتراضى .

**ملاحظة:**: تحديد الموقع يمنحك الكثير من المرونة و القدرة على التحكم بالتخطيط المرئى للصفحة . من الجيد أن تتذكر أنه بغض النظر عن موضع العناصر، توصيف الـ HTML الأساسى (HTML markup) يجب أن يكون منظماً ومنطقياً عند قرائته من الأعلى إلى الأسفل . هذا ما سيمكّن ضعاف البصر (الذين يعتمدون على أجهزة لمساعدتهم في القراءة مثل قارئ الشاشة) من الوصول إلى محتواك .

# --instructions--

غيّر الموقع `position` لــ `h2` إلى نسبى `relative`، واستخدم CSS offset (توازن CSS) لنقله 15 بكسل بعيداً عن الأعلى `top` حيث يجلس فى التدفق العادى . لاحظ أنه لم يظهر أثر على المواقع المحيطة بعنصري h1 و p.

# --hints--

يجب أن يحوى عنصر `h2` على خاصية الموقع `position` مضبوطة على نسبى `relative` .

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.position, 'relative');
```

يجب على التعليمات البرمجية الخاصة بك أن تستخدم CSS offset لضبط موقع `h2` نسبياً إلى 15 بكسلاً من الأعلى `top` حيث يجلس فى العادى .

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.top, '15px');
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {


  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<style>
  h2 {
    position: relative;
    top: 15px;
  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
