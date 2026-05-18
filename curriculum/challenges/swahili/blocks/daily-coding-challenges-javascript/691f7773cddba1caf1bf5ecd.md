---
id: 691f7773cddba1caf1bf5ecd
title: "Zoezi la 134: Mnunuzi Anayesafiri"
challengeType: 28
dashedName: challenge-134
---

# --description--

Ukizingatia kiasi cha pesa ulizonazo, na safu ya data ya vitu unavyotaka kununua, amua ni vingapi unaweza kununua.

- Kiasi kilichotolewa kitakuwa katika muundo wa `["Amount", "Currency Code"]`. Kwa mfano: `["150.00", "USD"]` au `["6000", "JPY"]`.
- Kila kipengee cha safu ya data unachotaka kununua kitakuwa katika muundo uleule.

Tumia viwango vya kubadilisha fedha vifuatavyo kubadilisha thamani:

|Sarafu|1 Kifungu Kinamaanisha|
|-|-|
|USD|1.00 USD|
|EUR|1.10 USD|
|GBP|1.25 USD|
|JPY|0.0070 USD|
|CAD|0.75 USD|

- Ikiwa unaweza kumudu vitu vyote vilivyopo kwenye orodha, rudisha `"Buy them all!"`.
- Vinginevyo, rudisha `"Buy the first X items."`, ambapo `X` ni idadi ya vitu unavyoweza kumudu kununua kwa mpangilio uliopewa.

# --hints--

`buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])` inapaswa kurudisha `"Buy the first 2 items."`.

```js
assert.equal(buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.");
```

`buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])` inapaswa kurudisha `"Buy them all!"`.

```js
assert.equal(buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!");
```

`buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])` inapaswa kurudisha `"Buy the first 3 items."`.

```js
assert.equal(buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.");
```

`buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])` inapaswa kurudisha `"Buy them all!"`.

```js
assert.equal(buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!");
```

`buyItems(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])` inapaswa kurudisha `"Buy the first 5 items."`.

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
