---
id: 691f7773cddba1caf1bf5ecd
title: "チャレンジ 134: 旅行中の買い物客"
challengeType: 28
dashedName: challenge-134
---

# --description--

所持している金額と、購入したいアイテムの配列が与えられたとき、いくつ購入できるかを判定してください。

- 与えられる金額は `["Amount", "Currency Code"]` の形式です。例えば `["150.00", "USD"]` や `["6000", "JPY"]` のようになります。
- 購入したい各アイテムも同じ形式です。

以下の為替レートを使って値を変換してください：

|通貨|1単位あたりのUSD換算|
|-|-|
|USD|1.00 USD|
|EUR|1.10 USD|
|GBP|1.25 USD|
|JPY|0.0070 USD|
|CAD|0.75 USD|

- リスト内のすべてのアイテムを購入できる場合は `"Buy them all!"` を返してください。
- そうでなければ、`"Buy the first X items."` を返してください。ただし `X` は与えられた順番で購入できるアイテムの数です。

# --hints--

`buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])` は `"Buy the first 2 items."` を返すべきです。

```js
assert.equal(buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.");
```

`buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])` は `"Buy them all!"` を返すべきです。

```js
assert.equal(buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!");
```

`buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])` は `"Buy the first 3 items."` を返すべきです。

```js
assert.equal(buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.");
```

`buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])` は `"Buy them all!"` を返すべきです。

```js
assert.equal(buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!");
```

`buyItems(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])` は `"Buy the first 5 items."` を返すべきです。

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
