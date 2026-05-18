---
id: 64de4bccf5becb208a48ca97
title: Schritt 13
challengeType: 20
dashedName: step-13
---

# --description--

Beim Turm von Hanoi können Sie die drei Stäbe nach ihrem Zweck unterscheiden:

- Der erste Stab ist die Quelle, auf der zu Beginn des Spiels alle Scheiben übereinander gestapelt sind.
- Der zweite Stab ist ein Hilfsstab, der beim Bewegen der Scheiben zum Zielstab hilft.
- Der dritte Stab ist das Ziel, auf dem am Ende des Spiels alle Scheiben in der richtigen Reihenfolge liegen sollen.

Derzeit nimmt die `move()`-Funktion keine Parameter entgegen. Ändern Sie die Funktionsdeklaration so, dass sie 4 Parameter annimmt: `n`, `source`, `auxiliary` und `target`. Übergeben Sie dann `NUMBER_OF_DISKS` und die Strings `'A'`, `'B'` und `'C'` als Argumente an Ihren Funktionsaufruf. Die Reihenfolge ist wichtig.

# --hints--

Ihre `move()`-Funktion sollte `n`, `source`, `auxiliary` und `target` als Parameter haben. Die Reihenfolge ist wichtig.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

Sie sollten `NUMBER_OF_DISKS` und die Strings `'A'`, `'B'` und `'C'` an `move()` übergeben. Die Reihenfolge ist wichtig.

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
