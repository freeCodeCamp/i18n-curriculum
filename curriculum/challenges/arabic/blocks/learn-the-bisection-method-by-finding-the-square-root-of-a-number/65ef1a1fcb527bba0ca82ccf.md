---
id: 65ef1a1fcb527bba0ca82ccf
title: الخطوة 6
challengeType: 20
dashedName: step-6
---

# --description--

إذا كان `square_target` يساوي `1`، أعلن متغيرًا `root` وقم بتعيين القيمة `1` له. أيضًا، اطبع الرسالة `'The square root of {square_target} is 1'`. تذكر تنسيق الرسالة باستخدام سلسلة نصية f-string.

# --hints--

يجب إزالة الكلمة المفتاحية `pass`.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

يجب تعيين القيمة `1` للمتغير `root` وطباعة الرسالة `'The square root of {square_target} is 1'` داخل جسم جملة `if`.

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
