---
id: 691f7773cddba1caf1bf5ecd
title: "Aufgabe 134: Reisender Einkäufer"
challengeType: 28
dashedName: challenge-134
---

# --description--

Gegeben ist ein Geldbetrag, den Sie haben, und ein Array von Artikeln, die Sie kaufen möchten. Bestimmen Sie, wie viele davon Sie sich leisten können.

- Der angegebene Betrag liegt im Format `["Amount", "Currency Code"]` vor. Zum Beispiel: `["150.00", "USD"]` oder `["6000", "JPY"]`.
- Jeder Artikel im Array, den Sie kaufen möchten, liegt im gleichen Format vor.

Verwenden Sie die folgenden Wechselkurse, um die Werte umzurechnen:

|Währung|1 Einheit entspricht|
|-|-|
|USD|1,00 USD|
|EUR|1,10 USD|
|GBP|1,25 USD|
|JPY|0,0070 USD|
|CAD|0,75 USD|

- Wenn Sie sich alle Artikel in der Liste leisten können, geben Sie `"Buy them all!"` zurück.
- Andernfalls geben Sie `"Buy the first X items."` zurück, wobei `X` die Anzahl der Artikel ist, die Sie sich leisten können, wenn Sie sie in der angegebenen Reihenfolge kaufen.

# --hints--

`buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])` sollte `"Buy the first 2 items."` zurückgeben.

```js
assert.equal(buyItems(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.");
```

`buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])` sollte `"Buy them all!"` zurückgeben.

```js
assert.equal(buyItems(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!");
```

`buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])` sollte `"Buy the first 3 items."` zurückgeben.

```js
assert.equal(buyItems(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.");
```

`buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])` sollte `"Buy them all!"` zurückgeben.

```js
assert.equal(buyItems(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!");
```

`buyItems(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])` sollte `"Buy the first 5 items."` zurückgeben.

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
