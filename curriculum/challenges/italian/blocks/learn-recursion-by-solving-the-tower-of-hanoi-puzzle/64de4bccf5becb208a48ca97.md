---
id: 64de4bccf5becb208a48ca97
title: Passaggio 13
challengeType: 20
dashedName: step-13
---

# --description--

Nel puzzle della torre di Hanoi, puoi identificare i tre pali in base al loro scopo:

- Il primo palo è la sorgente, dove tutti i dischi sono impilati uno sopra l’altro all’inizio del gioco.
- Il secondo palo è un palo ausiliario, e aiuta a spostare i dischi verso il palo obiettivo.
- Il terzo palo è l’obiettivo, dove tutti i dischi devono essere posizionati in ordine alla fine del gioco.

Attualmente, la funzione `move()` non prende parametri. Cambia la dichiarazione della funzione per farla accettare 4 parametri: `n`, `source`, `auxiliary` e `target`. Poi, passa `NUMBER_OF_DISKS` e le stringhe `'A'`, `'B'` e `'C'` come argomenti alla chiamata della funzione. L’ordine è importante.

# --hints--

La tua funzione `move()` dovrebbe avere `n`, `source`, `auxiliary` e `target` come parametri. L’ordine è importante.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

Dovresti passare `NUMBER_OF_DISKS` e le stringhe `'A'`, `'B'` e `'C'` a `move()`. L’ordine è importante.

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
