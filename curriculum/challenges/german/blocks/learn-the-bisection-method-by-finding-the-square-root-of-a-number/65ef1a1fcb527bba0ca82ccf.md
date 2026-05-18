---
id: 65ef1a1fcb527bba0ca82ccf
title: Schritt 6
challengeType: 20
dashedName: step-6
---

# --description--

Wenn der `square_target` gleich `1` ist, deklarieren Sie eine Variable `root` und weisen Sie ihr den Wert `1` zu. Geben Sie außerdem die Nachricht `'The square root of {square_target} is 1'` aus. Denken Sie daran, die Nachricht mit einem f-String zu formatieren.

# --hints--

Sie sollten das Schlüsselwort `pass` entfernen.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

Sie sollten der Variablen `1` den Wert `root` zuweisen und die Nachricht `'The square root of {square_target} is 1'` im Rumpf von `if` ausgeben.

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
