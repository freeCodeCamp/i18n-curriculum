---
id: 65ef1aacca094bbcc2e2a3c8
title: الخطوة 9
challengeType: 20
dashedName: step-9
---

# --description--

في بايثون، تُعيد الدالة `max()` أكبر قيمة من القيم المُدخَلة.

```python
max(1, 2, 3) # Output: 3
```

ستُستخدم المتغيرات `low` و `high` لتحديد الفترة الأولية التي يقع فيها الجذر التربيعي.

داخل بند `else`، ابدأ بتهيئة المتغير `low` إلى `0` والمتغير `high` ليكون أكبر قيمة بين `1` و `square_target` لأن الجذر التربيعي لأي عدد دائمًا أقل من أو يساوي العدد نفسه.

# --hints--

يجب إزالة الكلمة المفتاحية `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

يجب إعلان متغير `low` وتعيينه القيمة `0`.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

يجب إعلان متغير `high` واستخدام الدالة `max()` لتعيينه أكبر قيمة بين `1` و `square_target`.

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
