---
id: 65ef1aacca094bbcc2e2a3c8
title: ステップ 9
challengeType: 20
dashedName: step-9
---

# --description--

Pythonでは、`max()` 関数は入力値の中で最大の値を返します。

```python
max(1, 2, 3) # Output: 3
```

変数`low`と`high`は、平方根が存在する初期区間を定義するために使われます。

`else` 節の中で、`low` 変数を`0` に初期化し、`high` 変数を`1` と`square_target` のうちの最大値に設定してください。平方根は常に元の数以下だからです。

# --hints--

`pass` キーワードは削除してください。

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

`low` という変数を宣言し、`0` を代入してください。

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

`high` という変数を宣言し、`max()` 関数を使って`1` と`square_target` の最大値を代入してください。

```js

({ test: () => assert(runPython(`
node = _Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("high")
values = ["high = max(1, square_target)", "high = max(square_target, 1)"]
any(node.is_equivalent(val) for val in values)
`)) })
```

# --seed--

## --seed-contents--

```py
def square_root_bisection(square_target, tolerance=1e-7, max_iterations=100):
    if square_target < 0:
        raise ValueError('Square root of negative number is not defined in real numbers')
    if square_target == 1:
        root = 1
        print(f'The square root of {square_target} is 1')
    elif square_target == 0:
        root = 0
        print(f'The square root of {square_target} is 0')
--fcc-editable-region--
    else:
        pass
--fcc-editable-region--
```
