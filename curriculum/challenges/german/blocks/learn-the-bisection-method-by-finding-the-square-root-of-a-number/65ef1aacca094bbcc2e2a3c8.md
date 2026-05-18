---
id: 65ef1aacca094bbcc2e2a3c8
title: Schritt 9
challengeType: 20
dashedName: step-9
---

# --description--

In Python gibt die `max()` Funktion den größten der Eingabewerte zurück.

```python
max(1, 2, 3) # Output: 3
```

Die Variablen `low` und `high` werden verwendet, um das Anfangsintervall zu definieren, in dem die Quadratwurzel liegt.

Innerhalb der `else` Klausel initialisieren Sie die `low` Variable mit `0` und die `high` Variable mit dem Maximum von entweder `1` oder `square_target`, da die Quadratwurzel einer Zahl immer kleiner oder gleich der Zahl selbst ist.

# --hints--

Sie sollten das Schlüsselwort `pass` entfernen.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

Sie sollten eine Variable `low` deklarieren und ihr `0` zuweisen.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

Sie sollten eine Variable `high` deklarieren und die `max()` Funktion verwenden, um ihr den Maximalwert zwischen `1` und `square_target` zuzuweisen.

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
