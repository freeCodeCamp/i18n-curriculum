---
id: 587d7fa6367417b2b2512bc3
title: حدد مجموعة من العناصر مع D3
challengeType: 6
forumTopicId: 301490
dashedName: select-a-group-of-elements-with-d3
---

# --description--

D3 also has the `selectAll()` method to select a group of elements. It returns an array of HTML nodes for all the items in the document that match the input string. Here's an example to select all the anchor tags in a document:

```js
const anchors = d3.selectAll("a");
```

مثل طريقة `select()` طريقة `selectAll()` تدعم سلسلة الطريقة (method chaining)، ويمكنك استخدامها مع طرق أخرى.

# --instructions--

حدد جميع علامات `li` في الوثيقة، وغير نصهم إلى نص `list item` بإضافة طريقة `.text()` المسلسلة.

# --hints--

يجب أن يكون هناك 3 عناصر `li` في الصفحة، ويجب أن يقول النص في كل واحد `list item`. وينبغي أن تتطابق حالة الحروف والمباعدة بينهما على وجه الدقة.

```js
assert(
  $('li')
    .text()
    .match(/list item/g).length == 3
);
```

يجب أن يتواصل الكود الخاص بك بكائن `d3`.

```js
assert(code.match(/d3/g));
```

يجب أن يستخدم كودك طريقة `selectAll`.

```js
assert(code.match(/\.selectAll/g));
```

# --seed--

## --seed-contents--

```html
<body>
  <ul>
    <li>Example</li>
    <li>Example</li>
    <li>Example</li>
  </ul>
  <script>
    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <ul>
    <li>Example</li>
    <li>Example</li>
    <li>Example</li>
  </ul>
  <script>
    d3.selectAll("li")
      .text("list item")
  </script>
</body>
```
