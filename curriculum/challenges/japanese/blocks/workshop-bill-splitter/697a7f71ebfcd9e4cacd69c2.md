---
id: 697a7f71ebfcd9e4cacd69c2
title: ステップ 8
challengeType: 20
dashedName: step-8
---

# --description--

請求額は分割されますが、割り算はしばしば長い小数点以下の数字になります。お金は通常、小数点以下2桁で表されるため、最終結果を四捨五入する必要があります。

Python にはこれを行う組み込みの `round()` 関数があります。この関数は2つの引数を取ります：四捨五入したい数値と保持したい小数点以下の桁数です。例を示します。

```py
num = 4.815162342
round(num, 3) # 4.815
```

`round()` 関数を使って `final_bill` を小数点以下2桁に四捨五入し、その結果を `each_pays` という新しい変数に代入してください。

最後に、`print()` を使って文字列 `Each person pays:` とスペース、その後に `each_pays` 変数を表示してください。

これで請求額分割のワークショップは完了です。

# --hints--

`each_pays` という名前の変数を定義してください。

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

`round()` 関数を使って `final_bill` を小数点以下2桁に四捨五入し、その結果を `each_pays` 変数に代入してください。

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

`print()` を使って文字列 `Each person pays:` とスペース、その後に `each_pays` 変数を表示してください。

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
