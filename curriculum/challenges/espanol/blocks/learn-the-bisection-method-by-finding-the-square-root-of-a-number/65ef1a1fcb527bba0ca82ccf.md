---
id: 65ef1a1fcb527bba0ca82ccf
title: Paso 6
challengeType: 20
dashedName: step-6
---

# --description--

Si el `square_target` es igual a `1`, declara una variable `root` y asígnale el valor `1`. También, imprime el mensaje `'The square root of {square_target} is 1'`. Recuerda formatear el mensaje usando un f-string.

# --hints--

Debes reemplazar la palabra clave `pass`.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

Debes asignar el valor `1` a la variable `root` e imprimir el mensaje `'The square root of {square_target} is 1'` dentro del cuerpo del `if`.

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
