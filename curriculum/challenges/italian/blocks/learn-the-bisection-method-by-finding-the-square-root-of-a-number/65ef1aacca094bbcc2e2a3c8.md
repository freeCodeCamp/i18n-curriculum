---
id: 65ef1aacca094bbcc2e2a3c8
title: Passaggio 9
challengeType: 20
dashedName: step-9
---

# --description--

In Python, la funzione `max()` restituisce il valore più grande tra gli input.

```python
max(1, 2, 3) # Output: 3
```

Le variabili `low` e `high` saranno usate per definire l'intervallo iniziale in cui si trova la radice quadrata.

All'interno della clausola `else`, inizializza la variabile `low` a `0` e la variabile `high` al massimo tra `1` e `square_target`, dato che la radice quadrata di un numero è sempre minore o uguale al numero stesso.

# --hints--

Dovresti rimuovere la parola chiave `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

Dovresti dichiarare una variabile `low` e assegnarle `0`.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

Dovresti dichiarare una variabile `high` e usare la funzione `max()` per assegnarle il valore massimo tra `1` e `square_target`.

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
