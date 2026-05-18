---
id: 65ef1aacca094bbcc2e2a3c8
title: Hatua 9
challengeType: 20
dashedName: step-9
---

# --description--

Katika Python, kitendakazi cha `max()` hurejesha thamani kubwa zaidi kati ya thamani za ingizo.

```python
max(1, 2, 3) # Output: 3
```

Vigezo `low` na `high` vitatumika kufafanua kipindi cha awali ambacho mzizi wa mraba uko ndani yake.

Ndani ya kifungu cha `else`, anzisha kigezo `low` kwa `0` na kigezo `high` kiwe thamani kubwa zaidi kati ya `1` au `square_target` kwani mzizi wa mraba wa nambari huwa mdogo au sawa na nambari yenyewe.

# --hints--

Unapaswa kuondoa neno kuu la `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

Unapaswa kutangaza kigezo `low` na kuweka thamani yake kuwa `0`.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

Unapaswa kutangaza kigezo `high` na kutumia kitendakazi cha `max()` kuweka thamani yake kuwa thamani kubwa kati ya `1` na `square_target`.

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
