---
id: 587d7fa7367417b2b2512bc7
title: تغيير التصميم استناداً إلى البيانات
challengeType: 6
forumTopicId: 301479
dashedName: change-styles-based-on-data
---

# --description--

D3 is about visualization and presentation of data. It's likely you'll want to change the styling of elements based on the data. For example, you may want to color a data point blue if it has a value less than 20, and red otherwise. You can use a callback function in the `style()` method and include the conditional logic. The callback function uses the `d` parameter to represent the data point:

```js
selection.style("color", (d) => {

});
```

لا تقتصر وظيفة `style()` على تعيين `color` - يمكن استخدامها مع خصائص CSS الأخرى.

# --instructions--

أضف طريقة `style()` إلى الكود في المحرر لتعيين اللون `color` للعناصر المسمى `h2` بشروط. اكتب وظيفة إعادة التفاعل بحيث إذا كانت قيمة البيانات أقل من 20، فإنها ترجع أحمر، وإلا فإنها ترجع أخضر.

**ملاحظة:** يمكنك استخدام منطق if-else، أو ternary operator.

# --hints--

يجب أن يكون أول `h2` له لون `color` أحمر (red).

```js
assert($('h2').eq(0).css('color') == 'rgb(255, 0, 0)');
```

يجب أن يكون ثاني `h2` له `color` أخضر (green).

```js
assert($('h2').eq(1).css('color') == 'rgb(0, 128, 0)');
```

يجب أن يكون ثالث `h2` له `color` أخضر (green).

```js
assert($('h2').eq(2).css('color') == 'rgb(0, 128, 0)');
```

يجب أن يكون رابع `h2` له لون `color` أحمر (red).

```js
assert($('h2').eq(3).css('color') == 'rgb(255, 0, 0)');
```

يجب أن يكون هامس `h2` له `color` أخضر (green).

```js
assert($('h2').eq(4).css('color') == 'rgb(0, 128, 0)');
```

يجب أن يكون سادس `h2` له لون `color` أحمر (red).

```js
assert($('h2').eq(5).css('color') == 'rgb(255, 0, 0)');
```

يجب أن يكون سابع `h2` له `color` أخضر (green).

```js
assert($('h2').eq(6).css('color') == 'rgb(0, 128, 0)');
```

يجب أن يكون ثامن `h2` له لون `color` أحمر (red).

```js
assert($('h2').eq(7).css('color') == 'rgb(255, 0, 0)');
```

يجب أن يكون تاسع `h2` له لون `color` أحمر (red).

```js
assert($('h2').eq(8).css('color') == 'rgb(255, 0, 0)');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => (d + " USD"))
      // Add your code below this line



      // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => (d + " USD"))
      .style("color", (d) => d < 20 ? "red" : "green")
  </script>
</body>
```
