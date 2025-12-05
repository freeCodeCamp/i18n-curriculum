---
id: 65ef1aacca094bbcc2e2a3c8
title: Paso 9
challengeType: 20
dashedName: step-9
---

# --description--

En Python, la función `max()` devuelve el valor más grande de los valores de entrada.

```python
max(1, 2, 3) # Output: 3
```

Las variables `low` y `high` se usarán para definir el intervalo inicial donde se encuentra la raíz cuadrada.

Dentro de la cláusula `else`, inicializa la variable `low` en `0` y la variable `high` para que sea el máximo entre `1` o `square_target`, ya que la raíz cuadrada de un número siempre es menor o igual que el mismo número.

# --hints--

Debes reemplazar la palabra clave `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

Debes declarar una variable `low` y asignarle `0`.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

Debes declarar una variable `high` y usar la función `max()` para asignarle el valor máximo entre `1` y `square_target`.

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
