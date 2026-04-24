---
id: 65ef1a1fcb527bba0ca82ccf
title: ステップ 6
challengeType: 20
dashedName: step-6
---

# --description--

もし `square_target` が `1` と等しい場合、変数 `root` を宣言し、その値に `1` を代入してください。また、メッセージ `'The square root of {square_target} is 1'` を出力してください。メッセージは f-string を使ってフォーマットすることを忘れないでください。

# --hints--

`pass` キーワードは削除してください。

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

`1` の値を `root` 変数に代入し、`'The square root of {square_target} is 1'` の中でメッセージ `if` を出力してください。

```js

({
    test: () => 
    {        
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].is_equivalent("root = 1\\nprint(f'The square root of {square_target} is 1')")`));
    }
})

```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
def square_root_bisection(square_target, tolerance=1e-7, max_iterations=100):
    if square_target < 0:
        raise ValueError('Square root of negative number is not defined in real numbers')
    if square_target == 1:
        pass

--fcc-editable-region--
```
