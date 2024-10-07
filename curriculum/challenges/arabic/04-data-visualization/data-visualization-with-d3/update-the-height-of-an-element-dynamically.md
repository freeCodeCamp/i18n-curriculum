---
id: 587d7fa8367417b2b2512bc9
title: تحديث ديناميكي لارتفاع عنصر
challengeType: 6
forumTopicId: 301493
dashedName: update-the-height-of-an-element-dynamically
---

# --description--

The previous challenges covered how to display data from an array and how to add CSS classes. You can combine these lessons to create a simple bar chart. There are two steps to this:

1) إنشاء `div` لكل نقطة بيانات في القائمة

2) منح كل `div` ارتفاعا ديناميكيا، من خلال استخدام وظيفة إعادة التفاعل في طريقة `style()` التي تعين ارتفاعا مساويا لقيمة البيانات

تذكر التنسيق لتعيين تصميم باستخدام وظيفة إعادة التفعيل:

```js
selection.style("cssProperty", (d) => d)
```

# --instructions--

أضف طريقة `style()` إلى الكود في المحرر لتعيين `height` لكل عنصر. استخدم وظيفة إعادة التفاعل لإنتاج قيمة نقطة البيانات مع إضافة النص `px` إليها.

# --hints--

يجب أن يكون أول `div` له `height` بقيمة `12`.

```js
assert($('div').eq(0)[0].style.height === '12px');
```

يجب أن يكون ثاني `div` له `height` بقيمة `31`.

```js
assert($('div').eq(1)[0].style.height === '31px');
```

يجب أن يكون ثالث `div` له `height` بقيمة `22`.

```js
assert($('div').eq(2)[0].style.height === '22px');
```

يجب أن يكون رابع `div` له `height` بقيمة `17`.

```js
assert($('div').eq(3)[0].style.height === '17px');
```

يجب أن يكون خامس `div` له `height` بقيمة `25`.

```js
assert($('div').eq(4)[0].style.height === '25px');
```

يجب أن يكون سادس `div` له `height` بقيمة `18`.

```js
assert($('div').eq(5)[0].style.height === '18px');
```

يجب أن يكون سابع `div` له `height` بقيمة `29`.

```js
assert($('div').eq(6)[0].style.height === '29px');
```

يجب أن يكون ثامن `div` له `height` بقيمة `14`.

```js
assert($('div').eq(7)[0].style.height === '14px');
```

يجب أن يكون تاسع `div` له `height` بقيمة `9`.

```js
assert($('div').eq(8)[0].style.height === '9px');
```

# --seed--

## --seed-contents--

```html
<style>
  .bar {
    width: 25px;
    height: 100px;
    display: inline-block;
    background-color: blue;
  }
</style>
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("div")
      .data(dataset)
      .enter()
      .append("div")
      .attr("class", "bar")
      // Add your code below this line



      // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<style>
  .bar {
    width: 25px;
    height: 100px;
    display: inline-block;
    background-color: blue;
  }
</style>
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("div")
      .data(dataset)
      .enter()
      .append("div")
      .attr("class", "bar")
      .style('height', d => `${d}px`)
  </script>
</body>
```
