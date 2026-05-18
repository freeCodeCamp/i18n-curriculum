---
id: 65ef1c0a03fcabc04ded7e69
title: Hatua 12
challengeType: 20
dashedName: step-12
---

# --description--

Ndani ya mzunguko wa for, hesabu nambari ya katikati ya kipindi kinachoanzia `low` hadi `high`. Weka thamani hii katika kigezo `mid`.

Pia, hesabu mraba wa nambari ya katikati (`mid`) na uhifadhi katika kigezo `square_mid`.
    
# --hints--

Unapaswa kuondoa neno kuu la `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].has_pass()`))
        
    }

})

```

Unapaswa kutangaza kigezo `mid` na kuweka thamani `(low + high) / 2` ndani ya mwili wa mzunguko wa `for`.

```js
({
    test: () => 
    {
        assert(runPython(`
	node = _Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].find_variable("mid")
	values = ["mid = (low + high) / 2", "mid = (high + low) / 2"]
	any(node.is_equivalent(val) for val in values)
	`))
        
    }

})
```

Unapaswa kutangaza kigezo `square_mid` na kuweka thamani `mid**2` ndani ya mwili wa mzunguko wa for.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].find_variable("square_mid").is_equivalent("square_mid = mid**2")`)) })
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

    else:
        low = 0
        high = max(1, square_target)
        root = None
        
--fcc-editable-region--
        for _ in range(max_iterations):
            pass

--fcc-editable-region--
```
