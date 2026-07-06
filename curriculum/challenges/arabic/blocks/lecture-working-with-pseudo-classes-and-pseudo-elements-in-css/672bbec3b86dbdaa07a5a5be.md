---
id: 672bbec3b86dbdaa07a5a5be
title: ما هي أمثلة الفئات المزيفة الوظيفية؟
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

تسمح الفئات المزيفة الوظيفية باختيار العناصر بناءً على شروط أو علاقات أكثر تعقيدًا. على عكس الفئات المزيفة العادية التي تستهدف العناصر بناءً على حالة، مثل `:hover` و`:focus`، تقبل الفئات المزيفة الوظيفية معلمات داخل الأقواس العادية، ومن هنا جاء اسم "الفئات المزيفة الوظيفية".

أمثلة على الفئات المزيفة الوظيفية هي:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

لنلق نظرة أعمق على كل من هذه الفئات المزيفة الوظيفية مع أمثلة.

تُفيد الفئة المزيفة `:is()` عندما تريد تنسيق مجموعة من العناصر التي تشترك في بعض الخصائص، ولكن ليس كلها. على سبيل المثال، قد ترغب في تنسيق أنواع مختلفة من الأزرار على موقعك، بما في ذلك عناصر `button`، والروابط المنسقة كأزرار، وعناصر `input` بأنواع `submit` و`reset`. إليك مثالًا يمثل ذلك. بدون دالة `:is()`، كان عليك كتابة محدد معقد مثل هذا:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

باستخدام دالة `:is()`، يمكنك كتابة محدد أكثر اختصارًا وفهمًا مثل هذا:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

تعمل الفئة المزيفة `:where()` بطريقة مشابهة لـ `:is()`، لكنها لا تزيد من خصوصية محدداتك. وهذا يجعلها مثالية لتطبيق الأنماط دون التأثير على خصوصية القواعد الأخرى.

على سبيل المثال، يمكنك استخدام دالة `:where()` لتطبيق هامش (`margin`) وحشو (`padding`) صفر على عناصر العناوين. هذا يضمن أن إعادة التعيين لن تتداخل مع الأنماط الأكثر خصوصية التي قد تطبقها لاحقًا. إليك مثالًا على ذلك:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

كان من الصعب سابقًا تنسيق عنصر أب بناءً على حالات أطفاله حتى تم تقديم الفئة المزيفة `:has()`. تسمح لك بتطبيق أنماط على عنصر أب بناءً على وجود أو حالة عناصره الفرعية.

على سبيل المثال، سيطبق CSS أدناه فقط على أي عنصر `article` يحتوي على `h2` بداخله:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

تُعد الفئة المزيفة `:not()` مثالية للحالات التي تريد فيها تطبيق أنماط على مجموعة من العناصر مع استثناء واحد أو أكثر محددين. في CSS أدناه، أي زر ليس زرًا رئيسيًا سيكون له خلفية رمادية:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

أي فئة مزيفة تعمل مثل `:is()`، لكنها لا تضيف أي خصوصية لمحدداتك؟

## --answers--

`:not()`

### --feedback--

هذه الفئة المزيفة رائعة لتطبيق أنماط عامة وغير تدخلية.

---

`:has()`

### --feedback--

هذه الفئة المزيفة رائعة لتطبيق أنماط عامة وغير تدخلية.

---

`:where()`

---

`:empty`

### --feedback--

هذه الفئة المزيفة رائعة لتطبيق أنماط عامة وغير تدخلية.

## --video-solution--

3

## --text--

أي من هذه ليست فئة مزيفة وظيفية؟

## --answers--

`:is()`

### --feedback--

تستخدم الفئات المزيفة الوظيفية الأقواس العادية وتقبل معلمات بداخلها.

---

`:first-child`

---

`:has()`

### --feedback--

تستخدم الفئات المزيفة الوظيفية الأقواس العادية وتقبل معلمات بداخلها.

---

`:where()`

### --feedback--

تستخدم الفئات المزيفة الوظيفية الأقواس العادية وتقبل معلمات بداخلها.

## --video-solution--

2

## --text--

أي فئة مزيفة مثالية لحالة تريد فيها تطبيق أنماط على مجموعة من العناصر مع استثناء واحد أو اثنين؟

## --answers--

`:has()`

### --feedback--

فكر في كيفية استثناء عناصر محددة من التنسيق.

---

`:is()`

### --feedback--

فكر في كيفية استثناء عناصر محددة من التنسيق.

---

`:not()`

---

`:where()`

### --feedback--

فكر في كيفية استثناء عناصر محددة من التنسيق.

## --video-solution--

3
