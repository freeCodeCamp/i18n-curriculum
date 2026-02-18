---
id: 65ef1a1fcb527bba0ca82ccf
title: Passo 6
challengeType: 20
dashedName: step-6
---

# --description--

Se o `square_target` for igual a `1`, declare uma variável `root` e atribua a ela o valor `1`. Além disso, imprima a mensagem `'The square root of {square_target} is 1'`.  Remember to format the message using an f-string.

# --hints--

Você deve remover a palavra-chave `pass`.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

Você deve atribuir o valor `1` à variável `root` e imprimir a mensagem `'The square root of {square_target} is 1'` dentro do corpo do `if`.

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
