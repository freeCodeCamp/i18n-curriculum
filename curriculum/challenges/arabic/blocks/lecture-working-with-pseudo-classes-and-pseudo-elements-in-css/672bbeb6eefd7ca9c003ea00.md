---
id: 672bbeb6eefd7ca9c003ea00
title: ما هي أمثلة الفئات المزيفة الهيكلية الشجرية؟
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

تسمح لك الفئات المزيفة الهيكلية الشجرية باستهداف العناصر وتنسيقها بناءً على موقعها داخل شجرة المستند. تشير شجرة المستند إلى الهيكل الهرمي للعناصر في مستند HTML.

إليك قائمة بالفئات المزيفة الهيكلية الشجرية:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

لنلقِ نظرة أقرب على كل فئة مزيفة هيكلية شجرية، مع أمثلة توضيحية.

عادةً ما تكون الفئة المزيفة `:root` هي عنصر `html` الجذري. تساعدك على استهداف أعلى مستوى في المستند لتطبيق تنسيق مشترك على المستند بأكمله.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

تُستخدم الفئة المزيفة `:root` أيضًا بشكل شائع في تعيين متغيرات CSS:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

مع متغيرات CSS، يمكنك تخزين القيم وإعادة استخدامها في ورقة الأنماط الخاصة بك. ستتعلم المزيد عنها لاحقًا.

تشمل شجرة المستند أيضًا العناصر الفارغة، أي العناصر التي لا تحتوي على أطفال سوى فراغات بيضاء. لهذا السبب توجد فئة مزيفة `:empty` لاستهداف العناصر الفارغة. على سبيل المثال، يحتوي هذا الكود HTML على عنصرين فارغين في قائمة. باستخدام الفئة المزيفة `:empty`، يمكنك تنسيق عناصر القائمة الفارغة بشكل مختلف:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

الأمر الأكثر عملية مع عناصر القائمة الفارغة هو على الأرجح عدم عرضها على الإطلاق:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

تسمح لك `:nth-child(n)` باختيار العناصر بناءً على موقعها داخل العنصر الأب، بينما تتيح لك `:nth-last-child(n)` اختيار العناصر بالعد من النهاية. يمكن أن يكون `n` رقمًا محددًا أو كلمة مفتاحية مثل `odd` أو `even`. هذا مفيد جدًا في تنسيق خلايا الجدول بناءً على الموقع: زوجي وفردي.

إليك مثال HTML لجدول قائمة أسعار الفواكه. يستخدم CSS الفئة المزيفة `:nth-child` لاستهداف خلايا الجدول بناءً على المواقع الفردية والزوجية:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

تعمل الفئات المزيفة `:first-child` و`:last-child` و`:only-child` على العناصر داخل الحاوية الأب أو المستند بأكمله.

- `:first-child` يختار أول عنصر داخل العنصر الأب أو المستند.
- `:last-child` يختار آخر عنصر داخل العنصر الأب أو المستند.
- `:only-child` يختار العنصر الوحيد داخل العنصر الأب أو المستند.

باستخدام الفئتين المزيفتين `:first-child` و`:last-child`، سيتم اختيار كل من `Item 1` و`Item 3` في هذا المثال:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

إذا كان لديك المزيد من القوائم غير المرتبة على الصفحة، عليك أن تكون أكثر تحديدًا في الاختيار:

لأريك كيف تعمل الفئة المزيفة `:only-child`، إليك مثال HTML يحتوي على عنصرين `div` منفصلين. باستخدام الفئة المزيفة `:only-child`، يتم اختيار عنصر `div` الذي يحتوي على طفل واحد فقط:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

تختار الفئات المزيفة `:first-of-type` و`:last-of-type` أول وآخر ظهور لنوع عنصر معين داخل العنصر الأب. وهي مفيدة لتطبيق تنسيقات فريدة على أول أو آخر عنصر من ذلك النوع بين الأشقاء.

في المثال أدناه، تطبق الفئتان المزيفتان `:first-of-type` و`:last-of-type` على أول وآخر عنصر داخل عنصر `section`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

تسمح لك `:nth-of-type(n)` باختيار عنصر معين داخل العنصر الأب بناءً على موقعه بين الأشقاء من نفس النوع. على سبيل المثال، في HTML أدناه، تستهدف `:nth-of-type(2)` العنصر الثاني في الحاوية:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

تختار `:only-of-type` عنصرًا إذا كان هو الوحيد من نوعه داخل العنصر الأب. يمكن أن يكون هذا مفيدًا لتسليط الضوء على عناصر فردية أو لضمان تنسيقها بشكل مختلف عندما لا تكون جزءًا من مجموعة.

في المثال أدناه، هناك عنصران `div` أحدهما يحتوي على عنصر واحد فقط. يطبق CSS فقط على الحاوية الأولى:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

ما الفرق بين الفئتين المزيفتين `:first-of-type` و`:last-of-type`؟

## --answers--

تستهدف `:first-of-type` أول عنصر من نوع معين داخل العنصر الأب، بينما تستهدف `:last-of-type` آخر عنصر من نوع مختلف.

### --feedback--

فكر في كيف تساعدك هذه الفئات المزيفة على تنسيق أول وآخر ظهور لوسم معين، مثل `p` أو `h1`.

---

تستهدف كل من `:first-of-type` و`:last-of-type` أول ظهور لعنصر لكن في أقسام مختلفة من المستند.

### --feedback--

فكر في كيف تساعدك هذه الفئات المزيفة على تنسيق أول وآخر ظهور لوسم معين، مثل `p` أو `h1`.

---

تختار `:first-of-type` أول ظهور لنوع عنصر معين داخل العنصر الأب، بينما تختار `:last-of-type` آخر ظهور لنفس نوع العنصر داخل العنصر الأب.

---

تطبق `:last-of-type` التنسيقات على أول وآخر العناصر داخل المستند، بينما تطبق `:last-of-type` التنسيقات على جميع العناصر من نوع معين.

### --feedback--

فكر في كيف تساعدك هذه الفئات المزيفة على تنسيق أول وآخر ظهور لوسم معين، مثل `p` أو `h1`.

## --video-solution--

3

## --text--

ما الفرق بين الفئتين المزيفتين `:first-child` و`:last-child`؟

## --answers--

تستهدف `:first-child` أول عنصر داخل العنصر الأب، بينما تستهدف `:last-child` آخر عنصر داخل عنصر أب مختلف.

### --feedback--

فكر في كيف تساعدك الفئتان المزيفتان على تنسيق أول وآخر العناصر داخل نفس الحاوية الأب.

---

تستهدف `:first-child` أول عنصر داخل العنصر الأب، بينما تستهدف `:last-child` آخر عنصر داخل نفس العنصر الأب.

---

تستهدف `:first-child` أول عنصر من نوع معين داخل العنصر الأب، بينما تستهدف `:last-child` آخر عنصر من نوع مختلف داخل العنصر الأب.

### --feedback--

فكر في كيف تساعدك الفئتان المزيفتان على تنسيق أول وآخر العناصر داخل نفس الحاوية الأب.

---

تستهدف `:first-child` أول وآخر العناصر داخل العنصر الأب، بينما تستهدف `:last-child` جميع العناصر الأخرى.

### --feedback--

فكر في كيف تساعدك الفئتان المزيفتان على تنسيق أول وآخر العناصر داخل نفس الحاوية الأب.

## --video-solution--

2

## --text--

أي فئة مزيفة تسمح لك باستهداف العناصر التي لا تحتوي على أطفال، بما في ذلك تلك التي تحتوي فقط على فراغات بيضاء؟

## --answers--

`:empty`

---

`:first-child`

### --feedback--

فكر في كيفية تنسيق العناصر التي لا تحتوي على محتوى.

---

`:last-child`

### --feedback--

فكر في كيفية تنسيق العناصر التي لا تحتوي على محتوى.

---

`:only-of-type`

### --feedback--

فكر في كيفية تنسيق العناصر التي لا تحتوي على محتوى.

## --video-solution--

1
