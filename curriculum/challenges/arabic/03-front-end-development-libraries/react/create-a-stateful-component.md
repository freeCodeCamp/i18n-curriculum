---
id: 5a24c314108439a4d4036170
title: إنشاء مكون Stateful
challengeType: 6
forumTopicId: 301391
dashedName: create-a-stateful-component
---

# --description--

One of the most important topics in React is `state`. State consists of any data your application needs to know about, that can change over time. You want your apps to respond to state changes and present an updated UI when necessary. React offers a nice solution for the state management of modern web applications.

يمكنك إنشاء الحالة (state) في مكون React عن طريق الإعلان عن `state` خاصية في فئة المكون في `constructor` الخاص به. هذا يهيئ المكون `state` عند إنشائه. يجب تعيين خاصية `state` إلى `object` من JavaScript. تكونها يبدو كهذا:

```jsx
this.state = {

}
```

لديك حق الوصول إلى كائن `state` طوال عمر المكون الخاص بك. يمكنك تحديثه، توفيره في واجهة المستخدم الخاصة بك، وتمريره مثل props لمكونات ألابن. يمكن أن يكون الكائن `state` معقداً أو بسيطاً بقدر ما تحتاج. لاحظ أنه يجب عليك إنشاء عنصر فئة بواسطة تمديد `React.Component` لإنشاء `state` مثلما ذكر.

# --instructions--

هناك مكون في محرر التعليمات البرمجية يحاول تقديم خاصية `firstName` من `state`. ومع ذلك، لا يوجد `state` معرفة. قم بتهيئة المكون يحتوي `state` في `constructor` وقم بتعيين اسمك إلى خاصية `firstName`.

# --hints--

`StatefulComponent` يجب أن يكون موجودا ويقدم.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return mockedComponent.find('StatefulComponent').length === 1;
  })()
);
```

`StatefulComponent` يجب أن يقدم عناصر `div` و `h1`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h1').length === 1
    );
  })()
);
```

يجب تهيئة حالة (state) بقيمة `StatefulComponent` باستخدام خاصية `firstName` إلى string.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' && typeof initialState.firstName === 'string'
    );
  })()
);
```

الخاصية `firstName` في حالة `StatefulComponent` يجب أن تكون في عنصر `h1`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return mockedComponent.find('h1').text() === initialState.firstName;
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<StatefulComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    // Only change code below this line

    // Only change code above this line
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: 'freeCodeCamp!'
    }
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```
