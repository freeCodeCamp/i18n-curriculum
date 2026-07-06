---
id: 65ef1c0a03fcabc04ded7e69
title: الخطوة 12
challengeType: 20
dashedName: step-12
---

# --description--

داخل حلقة for، احسب نقطة المنتصف للفاصل الممتد من `low` إلى `high`. عيّن هذه القيمة في متغير `mid`.

أيضًا، احسب مربع نقطة المنتصف (`mid`) وخزّنه في المتغير `square_mid`.
    
# --hints--

يجب إزالة الكلمة المفتاحية `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].has_pass()`))
        
    }

})

```

يجب إعلان متغير `mid` وتعيين `(low + high) / 2` له داخل جسم حلقة `for`.

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

يجب إعلان متغير `square_mid` وتعيين `mid**2` له داخل جسم حلقة for.

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
