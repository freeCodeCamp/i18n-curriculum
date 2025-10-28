---
id: 65ef1aacca094bbcc2e2a3c8
title: Passo 9
challengeType: 20
dashedName: step-9
---

# --description--

Em Python, a função `max()` retorna o maior dos valores de entrada.

```python
max(1, 2, 3) # Output: 3
```

As variáveis `low` e `high` serão usadas para definir o intervalo inicial onde a raiz quadrada está localizada.

Dentro da cláusula `else`, inicialize a variável `low` com `0` e a variável `high` para ser o máximo entre `1` e `square_target`, pois a raiz quadrada de um número é sempre menor ou igual ao próprio número.

# --hints--

Você deve remover a palavra-chave `pass`.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

Você deve declarar uma variável `low` e atribuir a ela `0`.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

Você deve declarar uma variável `high` e usar a função `max()` para atribuir a ela o valor máximo entre `1` e `square_target`.

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
