---
id: 587d7790367417b2b2512ab1
title: استخدم attribute ال"tabindex" لترتيب تركيز لوحة المفاتيح لعدة عناصر
challengeType: 0
videoUrl: 'https://scrimba.com/c/cmzRRcb'
forumTopicId: 301028
dashedName: use-tabindex-to-specify-the-order-of-keyboard-focus-for-several-elements
---

# --description--

The `tabindex` attribute also specifies the exact tab order of elements. This is achieved when the attribute's value is set to a positive number of 1 or higher.

تحديد `tabindex="1"` سيجلب تركيز لوحة المفاتيح لهذا العنصر أولاً. ثم تُستكمل عملية التركيز من خلال تسلسل قيم `tabindex` (2، 3، إلخ.)، قبل الانتقال إلى العناصر الطبيعية والحاصلة على `tabindex="0"`.

من المهم ملاحظة أنه عندما يتم تحديد ال tab order بهذه الطريقة، فإنه يتجاوز الترتيب الافتراضي (الذي يستخدم مصدر ال HTML). قد يربك هذا المستخدمين الذين يتوقعون بدء التنقل من الجزء العلوي من الصفحة. قد يكون هذا الأسلوب ضرورياً في بعض الظروف، ولكن فيما يتعلق بال accessibility (إمكانية الوصول)، ينبغي توخي الحذر قبل تطبيقه.

إليك مثال:

```html
<div tabindex="1">I get keyboard focus, and I get it first!</div>
```

```html
<div tabindex="2">I get keyboard focus, and I get it second!</div>
```

# --instructions--

يحوي موقع Camper Cat حقل بحث في صفحة الاقتباسات الملهمة، ويخطط لوضعه في الزاوية اليمنى العليا عن طريق ال CSS. يريد ال `search input` (حقل البحث) و ال `submit input` (حقل الإرسال) ليكونا أول عنصرين في ال tab order. ضع attribute ال`tabindex` بقيمة `1` إلى ال `search` `input`، و `tabindex` آخر بقيمة `2` إلى `submit` `input`.

شيء آخر تجدر ملاحظته هو أن بعض المتصفحات قد تضعك في منتصف ال tab order عندما يتم النقر على عنصر ما. تم إضافة عنصر إلى الصفحة تضمن أنك سوف تنطلق دائماً من بداية ال tab order الخاص بك.

# --hints--

يجب أن يضيف ال code الخاص بك attribute ال `tabindex` إلى عنصر ال `search` `input`.

```js
assert.isNotNull(document.querySelector('#search')?.getAttribute('tabindex'));
```

يجب أن يضيف ال code الخاص بك attribute ال `tabindex` إلى عنصر ال `submit` `input`.

```js
assert.isNotNull(document.querySelector('#submit')?.getAttribute('tabindex'));
```

يجب أن يضيف ال code الخاص بك attribute ال `tabindex` إلى عنصر ال `search` `input` بقيمة 1.

```js
assert.equal(document.querySelector('#search')?.getAttribute('tabindex'), '1');
```

يجب أن يضيف ال code الخاص بك attribute ال `tabindex` إلى عنصر ال `submit` `input` بقيمة 2.

```js
assert.equal(document.querySelector('#submit')?.getAttribute('tabindex'), '2');
```

# --seed--

## --seed-contents--

```html
<body>
  <div tabindex="1" class="overlay"></div>
  <header>
    <h1>Even Deeper Thoughts with Master Camper Cat</h1>
    <nav>
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Blog</a></li>
        <li><a href="">Training</a></li>
      </ul>
    </nav>
  </header>
  <form>
    <label for="search">Search:</label>


    <input type="search" name="search" id="search">
    <input type="submit" name="submit" value="Submit" id="submit">


  </form>
  <h2>Inspirational Quotes</h2>
  <blockquote>
    <p>&ldquo;There's no Theory of Evolution, just a list of creatures I've allowed to live.&rdquo;<br>
    - Chuck Norris</p>
  </blockquote>
  <blockquote>
    <p>&ldquo;Wise men say forgiveness is divine, but never pay full price for late pizza.&rdquo;<br>
    - TMNT</p>
  </blockquote>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
<style>
  body {
    height: 100%;
    margin: 0 !important;
    padding: 8px;
  }
  .overlay {
    margin: -8px;
    position: absolute;
    width: 100%;
    height: 100%;
  }
</style>
```

# --solutions--

```html
<body>
  <div tabindex="1" class="overlay"></div>
  <header>
    <h1>Even Deeper Thoughts with Master Camper Cat</h1>
    <nav>
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Blog</a></li>
        <li><a href="">Training</a></li>
      </ul>
    </nav>
  </header>
  <form>
    <label for="search">Search:</label>


    <input tabindex="1" type="search" name="search" id="search">
    <input tabindex="2" type="submit" name="submit" value="Submit" id="submit">


  </form>
  <h2>Inspirational Quotes</h2>
  <blockquote>
    <p>&ldquo;There's no Theory of Evolution, just a list of creatures I've allowed to live.&rdquo;<br>
    - Chuck Norris</p>
  </blockquote>
  <blockquote>
    <p>&ldquo;Wise men say forgiveness is divine, but never pay full price for late pizza.&rdquo;<br>
    - TMNT</p>
  </blockquote>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
<style>
  body {
    height: 100%;
    margin: 0 !important;
    padding: 8px;
  }
  .overlay {
    margin: -8px;
    position: absolute;
    width: 100%;
    height: 100%;
  }
</style>
```
