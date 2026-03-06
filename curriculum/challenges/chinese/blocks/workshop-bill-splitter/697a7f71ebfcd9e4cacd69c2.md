---
id: 697a7f71ebfcd9e4cacd69c2
title: 步骤 8
challengeType: 20
dashedName: step-8
---

# --description--

账单被分摊，但除法通常会产生长小数。由于金钱通常表现为两位小数，你应该对最终结果进行四舍五入。

Python 提供了一个内置的 `round()` 函数来实现这一点。它接受两个参数：你想要四舍五入的数字和要保留的小数位数。下面是一个示例：

```py
num = 4.815162342
round(num, 3) # 4.815
```

使用 `round()` 函数将 `final_bill` 四舍五入到两位小数，并将结果赋值给名为 `each_pays` 的新建变量。

最后，使用 `print()` 显示字串 `Each person pays:`，后跟一个空格和你的 `each_pays` 变量。

至此，账单切分窗口工作坊已完成。

# --hints--

你应该定义一个名为 `each_pays` 的变量。

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

你应该使用 `round()` 函数将 `final_bill` 四舍五入到两位小数，并将结果赋值给你的 `each_pays` 变量。

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

你应该使用 `print()` 来显示字串 `Each person pays:`，后跟一个空格和你的 `each_pays` 变量。

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

running_total += appetizers + main_courses + desserts + drinks
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

running_total += appetizers + main_courses + desserts + drinks
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
