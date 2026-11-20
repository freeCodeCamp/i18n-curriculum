---
id: 697a7f71ebfcd9e4cacd69c2
title: 第 9 步
challengeType: 20
dashedName: step-9
---

# --description--

你一直在使用的 `:.2f` 格式指定符只會改變數字的顯示方式。數值本身仍保留所有小數位。若要取得真正四捨五入且可用於後續計算的數字，可以使用 `round()` 函式（程式）。

在之前的課程中，你學過 `round()` 函式（程式）接受兩個引數：你想要四捨五入的數字，以及要保留的小數位數。這裡有一個範例：

```py
num = 4.815162342
round(num, 3) # 4.815
```

使用 `round()` 函式將 `final_bill` 四捨五入到兩位小數，並將結果指定到名為 `each_pays` 的新變數。

接著，使用 `print()` 列印字串 `Each person pays:`，後面接一個空格和你的 `each_pays` 變數。這次不要格式化數字。

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
