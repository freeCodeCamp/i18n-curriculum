---
id: 65ef1a1fcb527bba0ca82ccf
title: Крок 6
challengeType: 20
dashedName: step-6
---

# --description--

Якщо `square_target` дорівнює `1`, оголосіть змінну `root` і призначте їй значення `1`. Також виведіть повідомлення `'The square root of {square_target} is 1'`. Не забудьте відформатувати повідомлення за допомогою f-рядка.

# --hints--

Ви повинні видалити ключове слово `pass`.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

Ви повинні призначити значення `1` змінній `root` і вивести повідомлення `'The square root of {square_target} is 1'` всередині тіла `if`.

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
