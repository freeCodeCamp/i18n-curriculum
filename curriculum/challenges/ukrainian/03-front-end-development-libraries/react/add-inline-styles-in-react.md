---
id: 5a24c314108439a4d4036182
title: Додайте вбудовані стилі в React
challengeType: 6
forumTopicId: 301378
dashedName: add-inline-styles-in-react
---

# --description--

You may have noticed in the last challenge that there were several other syntax differences from HTML inline styles in addition to the `style` attribute set to a JavaScript object. First, the names of certain CSS style properties use camel case. For example, the last challenge set the size of the font with `fontSize` instead of `font-size`. Hyphenated words like `font-size` are invalid syntax for JavaScript object properties, so React uses camel case. As a rule, any hyphenated style properties are written using camel case in JSX.

Вважається, що всі одиниці властивості довжини (наприклад, `height`, `width` та `fontSize`) мають значення `px`, якщо не вказано інше. Якщо ви хочете використати `em`, напишіть значення та одиниці в лапках: `{fontSize: "4em"}`. Окрім значень довжини, які за замовчуванням становлять `px`, всі інші значення властивостей потрібно писати в лапках.

# --instructions--

Якщо у вас великий перелік стилів, ви можете призначити об’єкт стилю (`object`) до константи, щоб код залишався організованим. Оголосіть константу стилю як глобальну змінну зверху файлу. Ініціалізуйте константу `styles` та призначте до неї об’єкт з трьома властивостями стилю і їхніми значеннями. Надайте `div` колір зі значенням `purple`, розмір шрифту зі значенням `40` та кордон зі значенням `2px solid purple`. Потім встановіть значення атрибута `style` на константу `styles`.

# --hints--

Змінна `styles` має бути об’єктом (`object`) з трьома властивостями.

```js
assert(Object.keys(styles).length === 3);
```

Змінна `styles` повинна мати властивість `color` зі значенням `purple`.

```js
assert(styles.color === 'purple');
```

Змінна `styles` повинна мати властивість `fontSize` зі значенням `40`.

```js
assert(styles.fontSize == 40);
```

Змінна `styles` повинна мати властивість `border` зі значенням `2px solid purple`.

```js
assert(styles.border === '2px solid purple');
```

Компонент має відтворити елемент `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.shallow(React.createElement(Colorful));
    return mockedComponent.type() === 'div';
  })()
);
```

Об’єкт `styles` має визначити стилі елемента `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.shallow(React.createElement(Colorful));
    return (
      mockedComponent.props().style.color === 'purple' &&
      mockedComponent.props().style.fontSize == 40 &&
      mockedComponent.props().style.border === '2px solid purple'
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Colorful />, document.getElementById('root'))
```

## --seed-contents--

```jsx
// Change code above this line
class Colorful extends React.Component {
  render() {
    // Change code below this line
    return (
      <div style={{color: "yellow", fontSize: 24}}>Style Me!</div>
    );
    // Change code above this line
  }
};
```

# --solutions--

```jsx
const styles = {
  color: "purple",
  fontSize: 40,
  border: "2px solid purple"
};
// Change code above this line
class Colorful extends React.Component {
  render() {
    // Change code below this line
    return (
      <div style={styles}>Style Me!</div>
    );
    // Change code above this line
  }
};
```
