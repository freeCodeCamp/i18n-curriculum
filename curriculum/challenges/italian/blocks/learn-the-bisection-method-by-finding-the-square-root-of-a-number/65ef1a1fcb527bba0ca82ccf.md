---
id: 65ef1a1fcb527bba0ca82ccf
title: Passaggio 6
challengeType: 20
dashedName: step-6
---

# --description--

Se `square_target` è uguale a `1`, dichiara una variabile `root` e assegnale il valore `1`. Inoltre, stampa il messaggio `'The square root of {square_target} is 1'`. Ricorda di formattare il messaggio usando una f-string.

# --hints--

Dovresti rimuovere la parola chiave `pass`.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

Dovresti assegnare il valore `1` alla variabile `root` e stampare il messaggio `'The square root of {square_target} is 1'` all'interno del corpo `if`.

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
