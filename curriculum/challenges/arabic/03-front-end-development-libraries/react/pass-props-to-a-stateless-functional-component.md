---
id: 5a24c314108439a4d4036169
title: مرر ميزات (Props) ألى مكون وظيفي عديم الحالة (Stateless Functional Component)
challengeType: 6
forumTopicId: 301402
dashedName: pass-props-to-a-stateless-functional-component
---

# --description--

The previous challenges covered a lot about creating and composing JSX elements, functional components, and ES6 style class components in React. With this foundation, it's time to look at another feature very common in React: **props**. In React, you can pass props, or properties, to child components. Say you have an `App` component which renders a child component called `Welcome` which is a stateless functional component. You can pass `Welcome` a `user` property by writing:

```jsx
<App>
  <Welcome user='Mark' />
</App>
```

أنت تستخدم **سمات HTML المخصصة** التي أنشأتها وتدعمها React ليتم تمريرها إلى المكون. في هذه الحالة، يتم تمرير الخاصية `user` التي تم إنشاؤها إلى المكون `Welcome`. لما كان `Welcome` هو مكون وظيفي عديم الحالة (stateless functional component)، فلديه حق الوصول إلى هذه القيمة مثل:

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

إنه معيار لاستدعاء هذه القيمة `props` وعند التعامل مع المكونات الوظيفية عديمة الحالة (stateless functional components)، أنت في الأساس تعدّ حَجَّة لوظيفة تنتج JSX. يمكنك الوصول إلى قيمة الحِجَّة في هيكل الوظيفة. مع مكونات الفئة، سترى أن هذا مختلف بعض الشيء.

# --instructions--

هناك مكونات `Calendar` و `CurrentDate` في محرر التعليمات البرمجية. عند أنتاج `CurrentDate` من مكون `Calendar`، اجر في خاصية `date` المحدد للتاريخ الحالي من JavaScript الكائن `Date`. ثم الوصول إلى عنصر `prop` هذا في مكون `CurrentDate`، مظهراً قيمته داخل العلامات `p`. لاحظ أنه من أجل `prop` أن يتم تقييم مثل قيم JavaScript، يجب أن تكون مرفقة في أقواس منحنية curly brackets، على سبيل المثال `date={Date()}`.

# --hints--

يجب أن يعيد مكون `Calendar` عنصر `div` واحد.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

يجب أن يكون العنصر الفرعي الثاني من عنصر `Calendar` هو مكون `CurrentDate`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

يجب أن يحتوي مكون `CurrentDate` على دعمه (prop) يسمى `date`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

يجب أن يحتوي مِيزة `date` في `CurrentDate` على string من النص.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

يجب إنشاء مِيزة `date` عن طريق الاتصال `Date()`

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

يجب أن ينتج المكون `CurrentDate` القيمة من مِيزة `date` في علامة `p`.

```js
let date = 'dummy date';
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(CurrentDate, { date })
    );
    return mockedComponent.find('p').html().includes(date);
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Calendar />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: </p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: {props.date}</p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate date={Date()} />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
