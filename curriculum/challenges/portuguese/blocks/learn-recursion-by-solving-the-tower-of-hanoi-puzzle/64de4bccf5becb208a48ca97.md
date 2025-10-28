---
id: 64de4bccf5becb208a48ca97
title: Passo 13
challengeType: 20
dashedName: step-13
---

# --description--

No quebra-cabeça Torre de Hanoi, você pode identificar as três hastes de acordo com seu propósito:

- A primeira haste é a fonte, onde todos os discos estão empilhados uns sobre os outros no início do jogo.
- A segunda haste é uma haste auxiliar e ela ajuda a mover os discos para a haste alvo.
- A terceira haste é o alvo, onde todos os discos devem ser colocados em ordem no final do jogo.

Atualmente, a função `move()` não recebe nenhum parâmetro.Altere a declaração da função para receber 4 parâmetros: `n`, `source`, `auxiliary` e `target`.Então, passe `NUMBER_OF_DISKS` e as strings `'A'`, `'B'` e `'C'` como argumentos para a chamada da sua função.A ordem importa.

# --hints--

A sua função `move()` deve ter `n`, `source`, `auxiliary` e `target` como parâmetros.A ordem importa.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

Você deve passar `NUMBER_OF_DISKS` e as strings `'A'`, `'B'` e `'C'` para `move()`.A ordem importa.

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
