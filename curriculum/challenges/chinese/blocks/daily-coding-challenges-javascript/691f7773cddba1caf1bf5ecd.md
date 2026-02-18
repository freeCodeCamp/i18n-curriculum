---
id: 691f7773cddba1caf1bf5ecd
title: "挑战 134：旅行购物者"
challengeType: 28
dashedName: challenge-134
---

# --description--

给定你拥有的金额和你想购买的 `array` 中的项，确定你能买得起多少项。

- 给定的金额将采用 `["Amount", "Currency Code"]` 形式。例如：`["150.00", "USD"]` 或 `["6000", "JPY"]`。
- 你想购买的每个数组项都将采用相同的形式。

使用以下汇率转换数值：

|Currency|1 Unit Equals|
|-|-|
|USD|1.00 USD|
|EUR|1.10 USD|
|GBP|1.25 USD|
|JPY|0.0070 USD|
|CAD|0.75 USD|

- 如果你能负担列表中的所有项，返回 `"Buy them all!"`。
- 否则，返回 `"Buy the first X items."`，其中 `X` 是你按照给定顺序购买时能够负担的项数。

# --hints--

`buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])` 应该返回 `"Buy the first 2 items."`。

```js
assert.equal(buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.");
```

`buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])` 应该返回 `"Buy them all!"`。

```js
assert.equal(buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!");
```

`buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])` 应该返回 `"Buy the first 3 items."`。

```js
assert.equal(buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.");
```

`buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])` 应该返回 `"Buy them all!"`。

```js
assert.equal(buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!");
```

`buyItems(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])` 应该返回 `"Buy the first 5 items."`。

```js
assert.equal(buyItems(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]]), "Buy the first 5 items.");
```

# --seed--

## --seed-contents--

```js
function buyItems(funds, items) {

  return funds;
}
```

# --solutions--

```js
function buyItems(funds, items) {
  const rates = {
    USD: 1.00,
    EUR: 1.10,
    GBP: 1.25,
    JPY: 0.0070,
    CAD: 0.75
  };

  const [amount, currency] = funds;
  let money = parseFloat(amount) * rates[currency];

  for (let i = 0; i < items.length; i++) {
    const [itemAmount, itemCurrency] = items[i];
    const itemCostUSD = parseFloat(itemAmount) * rates[itemCurrency];

    if (itemCostUSD > money) {
      return `Buy the first ${i} items.`;
    }

    money -= itemCostUSD;
  }

  return "Buy them all!";
}
```
