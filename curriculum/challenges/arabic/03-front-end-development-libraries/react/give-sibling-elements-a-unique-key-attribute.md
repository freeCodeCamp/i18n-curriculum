---
id: 5a24c314108439a4d403618b
title: إعطاء عناصر الأخوة (Sibling Elements) خاصية هُوِيَّة فريدة (Unique Key Attribute)
challengeType: 6
forumTopicId: 301394
dashedName: give-sibling-elements-a-unique-key-attribute
---

# --description--

The last challenge showed how the `map` method is used to dynamically render a number of elements based on user input. However, there was an important piece missing from that example. When you create an array of elements, each one needs a `key` attribute set to a unique value. React uses these keys to keep track of which items are added, changed, or removed. This helps make the re-rendering process more efficient when the list is modified in any way.

**ملاحظة:** هُوِيَّات تحتاج فقط إلى أن تكون فريدة من نوعها بين العناصر الشقيقة، فهي لا تحتج إلى أن تكون فريدة عالميا في تطبيقاتك.

# --instructions--

يحتوي محرر التعليمات البرمجية على مصفوفة مع بعض front end frameworks وعنصر عديم الحالة (stateless functional component) يطلق عليه `Frameworks()`. `Frameworks()` تحتاج إلى رسم خريطة (map) للتكوين قائمة غير منظمة (unordered list)، مثل التحدي السابق. إنهاء كتابة `map` رد الاتصال لإرجاع عنصر `li` لكل إطار (framework) في مصفوفة `frontEndFrameworks`. هذه المرة، تيقن من إعطاء كل `li` سمة `key`، بقيمة فريدة. يجب أن تحتوي عناصر `li` أيضًا على نص من `frontEndFrameworks`.

عادة، تريد أن تصنع هُوِيَّة (key) الذي يحدد الشكل فريد للعنصر الذي يتم تقديمه. كملاذ أخير، يمكن استخدام index المصفوف (array)، ولكن يجب عليك عادة أن تحاول استخدام بطاقة هُوِيَّة فريدة.

# --hints--

يجب أن يكون مكون `Frameworks` موجوداً وأن يُنتج في الصفحة.

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('Frameworks').length === 1
);
```

`Frameworks` يجب أن ينتج عنصر `h1`.

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('h1').length === 1);
```

`Frameworks` يجب أن ينتج عنصر `ul`.

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('ul').length === 1);
```

يجب أن ينتج `ul` ست عناصر `li`.

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('ul').children().length ===
    6 &&
    Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .childAt(0)
      .name() === 'li' &&
    Enzyme.mount(React.createElement(Frameworks)).find('li').length === 6
);
```

يجب أن يكون لكل عنصر من عناصر القائمة خاصية `key` فريدة.

```js
assert(
  (() => {
    const ul = Enzyme.mount(React.createElement(Frameworks)).find('ul');
    const keys = new Set([
      ul.childAt(0).key(),
      ul.childAt(1).key(),
      ul.childAt(2).key(),
      ul.childAt(3).key(),
      ul.childAt(4).key(),
      ul.childAt(5).key()
    ]);
    return keys.size === 6;
  })()
);
```

كل عنصر من عناصر القائمة يجب أن يحتوي على نص من `frontEndFrameworks`.

```js
assert(
  (() => {
    const li = Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .children();
    return [...Array(5)].every((_, i) =>
      frontEndFrameworks.includes(li.at(i).text())
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Frameworks />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = null; // Change this line
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```

# --solutions--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = frontEndFrameworks.map((fw, i) => <li key={i}>{fw}</li>);
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```
