---
id: 6808baa8f8dcaf4f50a7acaa
title: 第 17 步
challengeType: 0
dashedName: step-17
---

# --description--

对于真值条件，如果 `prev` 包含 `item`，则返回一个已过滤、移除 `item` 的数组。

将 `filter()` 方法链式调用到 `prev`，并传入一个以 `i` 为参数的匿名函数。在函数内部，查看 `i` 是否不严格相等于 `item`。这将返回一个包含除 `item` 之外所有项的新数组。

# --hints--

你应该将 `filter()` 方法链到 `prev`，并传入一个以 `i` 为参数的匿名函数。

```js
const script = [...document.querySelectorAll("script")].find((s) => s.dataset.src ===  "index.jsx").innerText;
const exports = {};
const a = eval(script);
const shoppingListString = exports.ShoppingList.toString();

assert.match(shoppingListString, /prev\.includes\s*\(\s*item\s*\)\s*\?\s*prev\.filter\s*\(function\s*\(\s*i\s*\)\s*{/);
```

在匿名的 `filter()` 函数内，你应该查看 `i` 是否不严格相等于 `item`。记住要返回该检查的结果。

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
