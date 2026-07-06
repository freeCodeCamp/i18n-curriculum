---
id: 5a24bbe0dba28a8d3cbd4c5f
title: عرض عناصر HTML على DOM
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

حتى الآن، تعلمت أن JSX أداة مريحة لكتابة HTML مقروء داخل JavaScript. مع React، يمكننا عرض هذا JSX مباشرة على DOM الخاص بـ HTML باستخدام واجهة برمجة التطبيقات للعرض في React المعروفة باسم ReactDOM.

يوفر ReactDOM طريقة بسيطة لعرض عناصر React على DOM تبدو هكذا: `ReactDOM.render(componentToRender, targetNode)`، حيث المعلمة الأولى هي عنصر React أو المكوِّن الذي تريد عرضه، والمعلمة الثانية هي عقدة DOM التي تريد عرض المكوِّن عليها.

كما تتوقع، يجب استدعاء `ReactDOM.render()` بعد إعلانات عناصر JSX، تمامًا كما يجب إعلان المتغيرات قبل استخدامها.

# --instructions--

يحتوي محرر الشفرة على مكوِّن JSX بسيط. استخدم طريقة `ReactDOM.render()` لعرض هذا المكوِّن على الصفحة. يمكنك تمرير عناصر JSX المعرفة مباشرة كالمعلمة الأولى واستخدام `document.getElementById()` لاختيار عقدة DOM لعرضها عليها. هناك `div` بمعرف `id='challenge-node'` متاح للاستخدام. تأكد من عدم تغيير الثابت `JSX`.

# --hints--

يجب أن تُرجع الثابتة `JSX` عنصر `div`.

```js
assert(JSX.type === 'div');
```

يجب أن يحتوي `div` على وسم `h1` كأول عنصر.

```js
assert(JSX.props.children[0].type === 'h1');
```

يجب أن يحتوي `div` على وسم `p` كالعنصر الثاني.

```js
assert(JSX.props.children[1].type === 'p');
```

يجب أن يعرض عنصر JSX المقدم على عقدة DOM ذات المعرف `challenge-node`.

```js
assert(
  document.getElementById('challenge-node').childNodes[0].innerHTML ===
    '<h1>Hello World</h1><p>Lets render this to the DOM</p>'
);
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Hello World</h1>
    <p>Lets render this to the DOM</p>
  </div>
);
// Add your code below this line
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello World</h1>
  <p>Lets render this to the DOM</p>
</div>
);
// Add your code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));
```
