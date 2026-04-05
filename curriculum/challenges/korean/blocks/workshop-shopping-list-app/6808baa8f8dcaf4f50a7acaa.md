---
id: 6808baa8f8dcaf4f50a7acaa
title: 17단계
challengeType: 0
dashedName: step-17
---

# --description--

참인 조건에 대해 `prev`가 `item`을 포함하면 `item`가 제거된 필터링된 배열을 반환하세요.

`filter()`에 `prev` 메서드를 연결하고 `i`를 인수로 받는 익명 함수를 전달하세요. 함수 내부에서 `i`가 `item`와 엄격히 같지 않은지 확인하세요. 이렇게 하면 `item`를 제외한 모든 항목이 포함된 새 배열이 반환됩니다.

# --hints--

`filter()`에 `prev` 메서드를 연결하고 `i`를 인수로 받는 익명 함수를 전달해야 합니다.

```js
const script = [...document.querySelectorAll("script")].find((s) => s.dataset.src ===  "index.jsx").innerText;
const exports = {};
const a = eval(script);
const shoppingListString = exports.ShoppingList.toString();

assert.match(shoppingListString, /prev\.includes\s*\(\s*item\s*\)\s*\?\s*prev\.filter\s*\(function\s*\(\s*i\s*\)\s*{/);
```

익명 `filter()` 함수 내부에서 `i`가 `item`와 엄격히 같지 않은지 확인하세요. 그 확인 결과를 반환하는 것도 잊지 마세요.

```js
const script = [...document.querySelectorAll("script")].find((s) => s.dataset.src ===  "index.jsx").innerText;
const exports = {};
const a = eval(script);
const shoppingListString = exports.ShoppingList.toString();

assert.match(shoppingListString, /prev\.includes\s*\(\s*item\s*\)\s*\?\s*prev\.filter\s*\(function\s*\(\s*i\s*\)\s*{\s*return\s+i\s*!==\s*item;?\s*}\s*\)/);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping List</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/18.3.1/umd/react.development.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react-dom/18.3.1/umd/react-dom.development.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/7.26.5/babel.min.js"></script>
    <script
      data-plugins="transform-modules-umd"
      type="text/babel"
      data-presets="react"
      data-type="module"
      src="index.jsx"
    ></script>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <main id="app-container"></main>
    <script
      data-plugins="transform-modules-umd"
      type="text/babel"
      data-presets="react"
      data-type="module"
    >
      import { ShoppingList } from "./index.jsx";
      const appContainer = document.getElementById("app-container");
      const root = ReactDOM.createRoot(appContainer);
      root.render(<ShoppingList />);
    </script>
  </body>
</html>

```

```css
:root {
  --dark-grey: #1b1b32;
  --light-grey: #f5f6f7;
  --dark-orange: #f89808;
  --yellow: #f1be32;
  --golden-yellow: #feac32;
}

*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  line-height: 1.5;
  color: var(--dark-grey);
  background-color: var(--dark-grey);
}

main,
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.container {
  background-color: var(--light-grey);
  width: 90%;
  margin: 20px;
  padding: 10px;
}

h1 {
  color: var(--dark-grey);
}

form {
  text-align: center;
}

button {
  cursor: pointer;
}

button {
  cursor: pointer;
  width: 100px;
  margin: 3px;
  color: var(--dark-grey);
  background-color: var(--golden-yellow);
  background-image: linear-gradient(#fecc4c, #ffac33);
  border-color: var(--golden-yellow);
  border-width: 3px;
}

button:hover {
  background-image: linear-gradient(#ffcc4c, #f89808);
}

input {
  color: var(--dark-grey);
  margin-left: 5px;
  padding: 3px;
}

li {
  text-align: left;
  margin: 10px 0;
}

.selected-item {
  font-weight: bold;
}

@media (min-width: 425px) {
  .container {
    width: 400px;
  }
}

```

```jsx
const { useState } = React;

const items = [
  "Apples",
  "Bananas",
  "Strawberries",
  "Blueberries",
  "Mangoes",
  "Pineapple",
  "Lettuce",
  "Broccoli",
  "Paper Towels",
  "Dish Soap",
];

export const ShoppingList = () => {
  const [query, setQuery] = useState("");
  const [selectedItems, setSelectedItems] = useState([]);

  const filteredItems = items.filter((item) => 
    item.toLowerCase().includes(query.toLowerCase())
  );

  const toggleItem = (item) => {
    setSelectedItems((prev) =>
      --fcc-editable-region--
      prev.includes(item) ? null : null
      --fcc-editable-region--
    );
  };

  return (
    <div className="container">
      <h1>Shopping List</h1>
      <form>
        <label htmlFor="search">Search for an item:</label>
        <input
          id="search"
          type="search"
          placeholder="Search..."
          aria-describedby="search-description"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
        /> 
        <p id="search-description">Type to filter the list below:</p>
        <ul>
          {filteredItems.map((item) => 
            <li key={item}>
              <label>
                <input
                  type="checkbox"
                  onChange={() => toggleItem(item)}
                />
                {item}
              </label>
            </li>
          )}
        </ul>
      </form>
    </div>
  );
};

```
