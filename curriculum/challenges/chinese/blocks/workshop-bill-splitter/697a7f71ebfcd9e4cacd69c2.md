---
id: 697a7f71ebfcd9e4cacd69c2
title: 第 9 步
challengeType: 20
dashedName: step-9
---

# --description--

你一直在使用的 `:.2f` 格式说明符只改变数字的显示方式。数值本身仍然保留所有小数位。要得到一个真正四舍五入且可以用于后续计算的数字，你可以使用 `round()` 函数。

在之前的课程中，你学过 `round()` 函数接受两个参数：你想要四舍五入的数字和保留的小数位数。下面是一个例子：

```py
num = 4.815162342
round(num, 3) # 4.815
```

使用 `round()` 函数将 `final_bill` 四舍五入到两位小数，并将结果赋值给名为 `each_pays` 的新建变量。

然后，使用 `print()` 打印字符串 `Each person pays:`，后面跟一个空格和你的 `each_pays` 变量。这次不要格式化数字。

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
    test: () => runPython(`
        import io, contextlib, re
        buffer = io.StringIO()
        with contextlib.redirect_stdout(buffer):
            exec(_code)
        assert re.search(r"^Each person pays: 62\\.1$", buffer.getvalue(), re.M)
    `)
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
drinks = 64.11

running_total += appetizers + main_courses + desserts + drinks
print(f'Total bill so far: {running_total:.2f}')

tip = running_total * 0.25
print(f'Tip amount: {tip:.2f}')

running_total += tip
print(f'Total with tip: {running_total:.2f}')

final_bill = running_total / num_of_friends
print(f'Bill per person: {final_bill:.2f}')

--fcc-editable-region--

--fcc-editable-region--
```
