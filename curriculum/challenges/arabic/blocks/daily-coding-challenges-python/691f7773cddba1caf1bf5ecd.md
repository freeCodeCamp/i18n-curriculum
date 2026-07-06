---
id: 691f7773cddba1caf1bf5ecd
title: "تحدٍّ 134: المتسوق المسافر"
challengeType: 29
dashedName: challenge-134
---

# --description--

بما أن لديك مبلغًا من المال ومصفوفة من العناصر التي تريد شرائها، حدّد كم عددها التي يمكنك تحمل ثمنها.

- سيكون المبلغ المعطى بصيغة `["Amount", "Currency Code"]`. على سبيل المثال: `["150.00", "USD"]` أو `["6000", "JPY"]`.
- كل عنصر في المصفوفة تريد شراؤه سيكون بنفس الصيغة.

استخدم أسعار الصرف التالية لتحويل القيم:

|العملة|تعادل وحدة واحدة|
|-|-|
|USD|1.00 USD|
|EUR|1.10 USD|
|GBP|1.25 USD|
|JPY|0.0070 USD|
|CAD|0.75 USD|

- إذا كنت تستطيع شراء كل العناصر في القائمة، أرجع `"Buy them all!"`.
- وإلا، أرجع `"Buy the first X items."`، حيث `X` هو عدد العناصر التي يمكنك شراؤها بالترتيب المعطى.


# --hints--

`buy_items(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]])` يجب أن تُرجع `"Buy the first 2 items."`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["150.00", "USD"], [["50.00", "USD"], ["75.00", "USD"], ["30.00", "USD"]]), "Buy the first 2 items.")`)
}})
```

`buy_items(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]])` يجب أن تُرجع `"Buy them all!"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["200.00", "EUR"], [["50.00", "USD"], ["50.00", "USD"]]), "Buy them all!")`)
}})
```

`buy_items(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]])` يجب أن تُرجع `"Buy the first 3 items."`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["100.00", "CAD"], [["20.00", "USD"], ["15.00", "EUR"], ["10.00", "GBP"], ["6000", "JPY"], ["5.00", "CAD"], ["10.00", "USD"]]), "Buy the first 3 items.")`)
}})
```

`buy_items(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]])` يجب أن تُرجع `"Buy them all!"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(buy_items(["5000", "JPY"], [["3.00", "USD"], ["1000", "JPY"], ["5.00", "CAD"], ["2.00", "EUR"], ["4.00", "USD"], ["2000", "JPY"]]), "Buy them all!")`)
}})
```

`buy_items(["200.00", "USD"], [["50.00", "USD"], ["40.00", "EUR"], ["30.00", "GBP"], ["5000", "JPY"], ["25.00", "CAD"], ["20.00", "USD"]])` يجب أن تُرجع `"Buy the first 5 items."`.

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
