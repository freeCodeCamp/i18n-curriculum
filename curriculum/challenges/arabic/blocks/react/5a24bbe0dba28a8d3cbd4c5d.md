---
id: 5a24bbe0dba28a8d3cbd4c5d
title: إنشاء عنصر JSX معقد
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

كان التحدٍّ الأخير مثالًا بسيطًا على JSX، لكن يمكن لـ JSX تمثيل HTML أكثر تعقيدًا أيضًا.

أمر مهم يجب معرفته عن JSX المسكن هو أنه يجب أن يُرجع عنصرًا واحدًا فقط.

هذا العنصر الأب الواحد سيغلف جميع المستويات الأخرى من العناصر المسكنة.

على سبيل المثال، عدة عناصر JSX مكتوبة كأشقاء بدون عنصر أب يغلفها لن تُحوّل إلى كود صالح.

إليك مثالًا:

**JSX صالح:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**JSX غير صالح:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

عرّف ثابتًا جديدًا باسم `JSX` يعرض عنصر `div` يحتوي على العناصر التالية بالترتيب:

عنصر `h1`، وعنصر `p`، وقائمة غير مرتبة تحتوي على ثلاثة عناصر `li`. يمكنك تضمين أي نص تريده داخل كل عنصر.

**ملاحظة:** عند عرض عدة عناصر مثل هذه، يمكنك تغليفها جميعًا داخل أقواس عادية، لكن هذا ليس مطلوبًا بالضرورة. لاحظ أيضًا أن هذا التحدٍّ يستخدم وسم `div` لتغليف جميع العناصر الفرعية داخل عنصر أب واحد. إذا أزلت `div`، فلن يُحوّل JSX بعد ذلك. احتفظ بهذا في ذهنك، إذ سيطبق الأمر نفسه عند إرجاع عناصر JSX في مكوّنات React.

# --hints--

يجب أن يُرجع الثابت `JSX` عنصر `div`.

```js
assert(JSX.type === 'div');
```

يجب أن يحتوي `div` على وسم `h1` كأول عنصر.

```js
assert(JSX.props.children[0].type === 'h1');
```

يجب أن يحتوي `div` على وسم `p` كثاني عنصر.

```js
assert(JSX.props.children[1].type === 'p');
```

يجب أن يحتوي `div` على وسم `ul` كثالث عنصر.

```js
assert(JSX.props.children[2].type === 'ul');
```

يجب أن يحتوي `ul` على ثلاثة عناصر `li`.

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --seed-contents--

```jsx

```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello JSX!</h1>
  <p>Some info</p>
  <ul>
    <li>An item</li>
    <li>Another item</li>
    <li>A third item</li>
  </ul>
</div>);
```
