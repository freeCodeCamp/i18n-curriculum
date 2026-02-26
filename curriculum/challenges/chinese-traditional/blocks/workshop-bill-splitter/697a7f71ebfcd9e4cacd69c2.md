---
id: 697a7f71ebfcd9e4cacd69c2
title: 第 8 步
challengeType: 20
dashedName: step-8
---

# --description--

帳單已拆分，但除法常常導致長小數。由於金錢通常以兩位小數表述，你應該將最終結果四捨五入。

Python 提供了一個內建的 `round()` 函式（程式）。它接受兩個引數：你想要四捨五入的數字以及要保留的小數位數。以下是一個範例：

```py
num = 4.815162342
round(num, 3) # 4.815
```

使用 `round()` 函式將 `final_bill` 四捨五入到兩位小數，並將結果指定到名為 `each_pays` 的新變數。

最後，使用 `print()` 顯示字串 `Each person pays:`，後面接一個空格和你的 `each_pays` 變數。

至此，帳單分裂視窗工作坊已完成。

# --hints--

你應該定義一個名為 `each_pays` 的變數。

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

你應該使用 `round()` 函式將 `final_bill` 四捨五入到兩位小數，並將結果指定給你的 `each_pays` 變數。

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

你應該使用 `print()` 來顯示字串 `Each person pays:`，後面接一個空格和你的 `each_pays` 變數。

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_call("print('Each person pays:', each_pays)") or _Node(_code).has_call("print(f'Each person pays: {each_pays}')")`))
})
```

# --seed--

## --seed-contents--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total = appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total = appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

each_pays = round(final_bill, 2)
print('Each person pays:', each_pays)
```
