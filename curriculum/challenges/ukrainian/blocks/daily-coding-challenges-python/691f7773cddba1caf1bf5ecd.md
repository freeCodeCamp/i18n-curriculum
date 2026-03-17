---
id: 691f7773cddba1caf1bf5ecd
title: "Завдання 134: мандрівний покупець"
challengeType: 29
dashedName: challenge-134
---

# --description--

Враховуючи суму грошей, яку ви маєте, та масив елементів, які хочете купити, визначте, скільки з них ви можете собі дозволити.

- Задана сума буде у форматі `["Amount", "Currency Code"]`. Наприклад: `["150.00", "USD"]` або `["6000", "JPY"]`.
- Кожен елемент масиву, який ви хочете придбати, буде у тому ж форматі.

Використовуйте наведені курси обміну для конвертації значень:

|Валюта|1 одиниця дорівнює|
|-|-|
|USD|1.00 USD|
|EUR|1.10 USD|
|GBP|1.25 USD|
|JPY|0.0070 USD|
|CAD|0.75 USD|

- Якщо ви можете дозволити собі всі елементи у списку, поверніть `"Buy them all!"`.
- Інакше поверніть `"Buy the first X items."`, де `X` — це число елементів, які ви можете собі дозволити, купуючи їх у заданому порядку.


# --hints--

`buy_items(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])` має повертати `"Buy the first 2 items."`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.")`)
}})
```

`buy_items(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])` має повертати `"Buy them all!"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!")`)
}})
```

`buy_items(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])` має повертати `"Buy the first 3 items."`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.")`)
}})
```

`buy_items(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])` має повертати `"Buy them all!"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!")`)
}})
```

`buy_items(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])` має повертати `"Buy the first 5 items."`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]]), "Buy the first 5 items.")`)
}})
```

# --seed--

## --seed-contents--

```py
def buy_items(funds, items):

    return funds
```

# --solutions--

```py
def buy_items(funds, items):
    rates = {
        "USD": 1.00,
        "EUR": 1.10,
        "GBP": 1.25,
        "JPY": 0.0070,
        "CAD": 0.75
    }

    amount, currency = funds
    money = float(amount) * rates[currency]

    for i, (item_amount, item_currency) in enumerate(items):
        item_cost_usd = float(item_amount) * rates[item_currency]

        if item_cost_usd > money:
            return f"Buy the first {i} items."

        money -= item_cost_usd

    return "Buy them all!"
```
