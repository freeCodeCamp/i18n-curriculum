---
id: 5a24bbe0dba28a8d3cbd4c5e
title: إضافة تعليقات في JSX
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX هي صيغة نحوية تُحوَّل إلى شفرة JavaScript صالحة. أحيانًا، لتحسين قابلية القراءة، قد تحتاج إلى إضافة تعليقات إلى شفرتك. مثل معظم لغات البرمجة، لدى JSX طريقة خاصة للقيام بذلك.

لإضافة تعليقات داخل JSX، استخدم الصيغة `{/* */}` لتغليف نص التعليق.

# --instructions--

يحتوي محرر الشفرة على عنصر JSX مشابه لما أنشأته في التحدٍّ السابق. أضف تعليقًا في مكان ما داخل عنصر `div` المقدم، دون تعديل عناصر `h1` أو `p` الموجودة.

# --hints--

يجب أن تُرجع الثابتة `JSX` عنصر `div`.

```js
assert(JSX.type === 'div');
```

يجب أن يحتوي عنصر `div` على وسم `h1` كأول عنصر.

```js
assert(JSX.props.children[0].type === 'h1');
```

يجب أن يحتوي عنصر `div` على وسم `p` كالعنصر الثاني.

```js
assert(JSX.props.children[1].type === 'p');
```

يجب عدم تعديل عناصر `h1` و `p` الموجودة.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

يجب أن يستخدم `JSX` صيغة تعليق صحيحة.

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>This is a block of JSX</h1>
    <p>Here's a subtitle</p>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>This is a block of JSX</h1>
  { /* this is a JSX comment */ }
  <p>Here's a subtitle</p>
</div>);
```
