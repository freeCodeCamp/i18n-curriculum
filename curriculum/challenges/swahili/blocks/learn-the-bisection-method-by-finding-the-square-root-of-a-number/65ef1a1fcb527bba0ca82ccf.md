---
id: 65ef1a1fcb527bba0ca82ccf
title: Hatua 6
challengeType: 20
dashedName: step-6
---

# --description--

Ikiwa `square_target` ni sawa na `1`, tangaza kigezo `root` na weka thamani `1` . Pia, chapisha ujumbe `'The square root of {square_target} is 1'`. Kumbuka kuunda ujumbe kwa kutumia mfuatano wa herufi wa f-string.

# --hints--

Unapaswa kuondoa neno kuu `pass`.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

Unapaswa kuweka thamani `1` kwa kigezo `root` na kuchapisha ujumbe `'The square root of {square_target} is 1'` ndani ya mwili wa `if`.

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
