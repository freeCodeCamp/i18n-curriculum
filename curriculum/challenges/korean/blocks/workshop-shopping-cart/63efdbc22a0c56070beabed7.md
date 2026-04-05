---
id: 63efdbc22a0c56070beabed7
title: Step 23
challengeType: 0
dashedName: step-23
---

# --description--

잘하고 있습니다! 하지만 JavaScript에서 객체를 다룰 때 흔히 발생하는 문제를 잠시 살펴보겠습니다.

존재하지 않는 객체 속성에 접근하려 하면 JavaScript는 `undefined`를 반환합니다. 그런 다음 `undefined`에 산술 연산을 시도하면 `NaN`와 같은 예상치 못한 결과가 발생할 수 있습니다.

이를 방지하려면 기본값을 제공하기 위해 `||` (논리 OR) 연산자를 사용할 수 있습니다.

```js
  let scores = {}; 
  let players = ["Alice", "Bob", "Charlie"];

  players.forEach(player => {
    scores[player] = scores[player] || 0;
  });
```

이제 이 개념을 `totalCountPerProduct` 콜백에서 `forEach` 객체에 적용해 보세요. 각 `dessert.id` 속성이 제대로 초기화되었는지 확인하세요.

`totalCountPerProduct[dessert.id]` 연산자를 사용해 `0`을 기본값 `||`로 초기화하세요.

# --hints--

`id`의 `dessert` 속성에 접근하려면 점 표기법을 사용하세요.

```js
const cart = new ShoppingCart();
assert.match(cart.addItem.toString(), /dessert\.id/);
```

`totalCountPerProduct`의 `dessert.id`에 해당하는 속성에 접근하려면 대괄호 표기법을 사용하세요.

```js
const cart = new ShoppingCart();
assert.match(cart.addItem.toString(), /totalCountPerProduct\s*\[\s*dessert\.id\s*\]/);
```

표현식 끝에 `totalCountPerProduct[dessert.id]` 연산자를 사용해 `0`을 기본값 `||`로 초기화하세요.

```js
const cart = new ShoppingCart();
assert.match(cart.addItem.toString(), /totalCountPerProduct\s*\[\s*dessert\.id\s*\]\s*=\s*totalCountPerProduct\s*\[\s*dessert\.id\s*\]\s*\|\|\s*0\s*/);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>freeCodeCamp Shopping Cart</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <header>
      <h1 class="title">Desserts Page</h1>
    </header>
    <main>
      <button id="cart-btn" type="button" class="btn">
        <span id="show-hide-cart">Show</span> Cart
      </button>
      <div id="cart-container">
        <button class="btn" id="clear-cart-btn">Clear Cart</button>
        <div id="products-container"></div>
        <p>Total number of items: <span id="total-items">0</span></p>
        <p>Subtotal: <span id="subtotal">$0</span></p>
        <p>Taxes: <span id="taxes">$0</span></p>
        <p>Total: <span id="total">$0</span></p>
      </div>
      <div id="dessert-card-container"></div>
    </main>
    <script src="./script.js"></script>
  </body>
</html>
```

```css
*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

:root {
  --dark-grey: #1b1b32;
  --light-grey: #f5f6f7;
  --black: #000;
  --white: #fff;
  --grey: #3b3b4f;
  --golden-yellow: #fecc4c;
  --yellow: #ffcc4c;
  --gold: #feac32;
  --orange: #ffac33;
  --dark-orange: #f89808;
}

body {
  background-color: var(--dark-grey);
}

.title {
  color: var(--light-grey);
  text-align: center;
  margin: 25px 0;
}

#dessert-card-container {
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
  align-items: center;
}

.dessert-card {
  background-color: var(--light-grey);
  padding: 15px;
  text-align: center;
  border-radius: 15px;
  margin: 20px 10px;
}

.dessert-price {
  font-size: 1.2rem;
}

.btn {
  display: block;
  cursor: pointer;
  width: 100px;
  color: var(--dark-grey);
  background-color: var(--gold);
  background-image: linear-gradient(var(--golden-yellow), var(--orange));
  border-color: var(--gold);
  border-width: 3px;
}

.btn:hover {
  background-image: linear-gradient(var(--yellow), var(--dark-orange));
}

#cart-btn {
  position: absolute;
  top: 0;
  right: 0;
}

.add-to-cart-btn {
  margin: 30px auto 10px;
}

#cart-container {
  display: none;
  position: absolute;
  top: 60px;
  right: 0;
  background-color: var(--light-grey);
  width: 200px;
  height: 400px;
  border: 8px double var(--black);
  border-radius: 15px;
  text-align: center;
  font-size: 1.2rem;
  overflow-y: scroll;
}

.product {
  margin: 25px 0;
}

.product-count {
  display: inline-block;
  margin-right: 10px;
}

.product-category {
  margin: 10px 0;
}

@media (min-width: 768px) {
  #dessert-card-container {
    flex-direction: row;
  }

  .dessert-card {
    flex: 1 0 21%;
  }

  #cart-container {
    width: 300px;
  }
}
```

```js
const cartContainer = document.getElementById("cart-container");
const productsContainer = document.getElementById("products-container");
const dessertCards = document.getElementById("dessert-card-container");
const cartBtn = document.getElementById("cart-btn");
const clearCartBtn = document.getElementById("clear-cart-btn");
const totalNumberOfItems = document.getElementById("total-items");
const cartSubTotal = document.getElementById("subtotal");
const cartTaxes = document.getElementById("taxes");
const cartTotal = document.getElementById("total");
const showHideCartSpan = document.getElementById("show-hide-cart");
let isCartShowing = false;

const products = [
  {
    id: 1,
    name: "Vanilla Cupcakes (6 Pack)",
    price: 12.99,
    category: "Cupcake",
  },
  {
    id: 2,
    name: "French Macaron",
    price: 3.99,
    category: "Macaron",
  },
  {
    id: 3,
    name: "Pumpkin Cupcake",
    price: 3.99,
    category: "Cupcake",
  },
  {
    id: 4,
    name: "Chocolate Cupcake",
    price: 5.99,
    category: "Cupcake",
  },
  {
    id: 5,
    name: "Chocolate Pretzels (4 Pack)",
    price: 10.99,
    category: "Pretzel",
  },
  {
    id: 6,
    name: "Strawberry Ice Cream",
    price: 2.99,
    category: "Ice Cream",
  },
  {
    id: 7,
    name: "Chocolate Macarons (4 Pack)",
    price: 9.99,
    category: "Macaron",
  },
  {
    id: 8,
    name: "Strawberry Pretzel",
    price: 4.99,
    category: "Pretzel",
  },
  {
    id: 9,
    name: "Butter Pecan Ice Cream",
    price: 2.99,
    category: "Ice Cream",
  },
  {
    id: 10,
    name: "Rocky Road Ice Cream",
    price: 2.99,
    category: "Ice Cream",
  },
  {
    id: 11,
    name: "Vanilla Macarons (5 Pack)",
    price: 11.99,
    category: "Macaron",
  },
  {
    id: 12,
    name: "Lemon Cupcakes (4 Pack)",
    price: 12.99,
    category: "Cupcake",
  },
];

products.forEach(
  ({ name, id, price, category }) => {
    dessertCards.innerHTML += `
      <div class="dessert-card">
        <h2>${name}</h2>
        <p class="dessert-price">$${price}</p>
        <p class="product-category">Category: ${category}</p>
        <button 
          id="${id}" 
          class="btn add-to-cart-btn">Add to cart
        </button>
      </div>
    `;
  }
);

class ShoppingCart {
  constructor() {
    this.items = [];
    this.total = 0;
    this.taxRate = 8.25;
  }

--fcc-editable-region--
  addItem(id, products) {
    const product = products.find((item) => item.id === id);
    const { name, price } = product;
    this.items.push(product);

    const totalCountPerProduct = {};
    this.items.forEach((dessert) => {
      
    })
  }
--fcc-editable-region--
};
```
