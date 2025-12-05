---
id: 64de4bccf5becb208a48ca97
title: Paso 13
challengeType: 20
dashedName: step-13
---

# --description--

En el rompecabezas de la Torre de Hanoi, puedes identificar las tres varillas según su propósito:

- La primera varilla es la fuente, donde todos los discos están apilados uno encima del otro al comienzo del juego.
- La segunda varilla es una varilla auxiliar, y ayuda a mover los discos a la varilla objetivo.
- La tercera varilla es el objetivo, donde todos los discos deben colocarse en orden al final del juego.

Actualmente, la función `move()` no recibe ningún parámetro. Cambia la declaración de la función para que reciba 4 parámetros: `n`, `source`, `auxiliary` y `target`. Luego, pasa `NUMBER_OF_DISKS` y las cadenas `'A'`, `'B'` y `'C'` como argumentos en la llamada a tu función. El orden importa.

# --hints--

Tu función `move()` debe tener `n`, `source`, `auxiliary` y `target` como parámetros. El orden importa.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

Debes pasar `NUMBER_OF_DISKS` y las cadenas `'A'`, `'B'` y `'C'` a `move()`. El orden importa.

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
