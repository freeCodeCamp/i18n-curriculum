---
id: 697a7f71ebfcd9e4cacd69c2
title: ステップ 9
challengeType: 20
dashedName: step-9
---

# --description--

これまで使ってきた `:.2f` のフォーマット指定子は、数字の表示方法だけを変えています。値自体は小数点以下の桁数をすべて保持しています。実際に丸められ、さらに計算に使える数値を得るには、`round()` 関数を使います。

前のレッスンで、`round()` 関数は2つの引数を取ることを学びました。丸めたい数値と、保持したい小数点以下の桁数です。例を示します：

```py
num = 4.815162342
round(num, 3) # 4.815
```

`round()` 関数を使って `final_bill` を小数点以下2桁に四捨五入し、その結果を `each_pays` という新しい変数に代入してください。

次に、`print()` を使って文字列 `Each person pays:` とスペース、その後に `each_pays` 変数を出力してください。今回は数値のフォーマットはしないでください。

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
