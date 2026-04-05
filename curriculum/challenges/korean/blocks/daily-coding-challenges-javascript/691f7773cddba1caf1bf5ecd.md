---
id: 691f7773cddba1caf1bf5ecd
title: "도전 과제 134: 여행 쇼핑객"
challengeType: 28
dashedName: challenge-134
---

# --description--

가지고 있는 금액과 구매하려는 항목들의 배열이 주어졌을 때, 몇 개를 살 수 있는지 결정하세요.

- 주어진 금액은 `["Amount", "Currency Code"]` 형식입니다. 예를 들어: `["150.00", "USD"]` 또는 `["6000", "JPY"]`.
- 구매하려는 각 배열 항목도 같은 형식입니다.

다음 환율을 사용해 값을 변환하세요:

|통화|1 단위는 다음과 같습니다|
|-|-|
|USD|1.00 USD|
|EUR|1.10 USD|
|GBP|1.25 USD|
|JPY|0.0070 USD|
|CAD|0.75 USD|

- 목록에 있는 모든 항목을 살 수 있으면 `"Buy them all!"`를 반환하세요.
- 그렇지 않으면, `"Buy the first X items."`를 반환하세요. 여기서 `X`는 주어진 순서대로 구매할 때 살 수 있는 항목 수입니다.

# --hints--

`buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])`는 `"Buy the first 2 items."`를 반환해야 합니다.

```js
assert.equal(buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.");
```

`buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])`는 `"Buy them all!"`를 반환해야 합니다.

```js
assert.equal(buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!");
```

`buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])`는 `"Buy the first 3 items."`를 반환해야 합니다.

```js
assert.equal(buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.");
```

`buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])`는 `"Buy them all!"`를 반환해야 합니다.

```js
assert.equal(buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!");
```

`buyItems(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])`는 `"Buy the first 5 items."`를 반환해야 합니다.

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
