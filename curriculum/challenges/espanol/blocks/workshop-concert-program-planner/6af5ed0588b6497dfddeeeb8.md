---
id: 6af5ed0588b6497dfddeeeb8
title: Paso 5
challengeType: 20
dashedName: step-5
---

# --description--

Las listas son mutables, lo que significa que puedes cambiarlas después de crearlas.

El método `append()` agrega un elemento al final de una lista. Modifica la lista en el lugar, así que no necesitas reasignar el resultado a la variable:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

El director quiere terminar el concierto con una pieza animada. Usa `append()` para agregar la cadena `Slavonic Dance No. 8` al final de `pieces`. Luego, imprime `pieces` para ver la lista actualizada.

# --hints--

Debes llamar a `pieces.append()` con la cadena `Slavonic Dance No. 8`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

Debes imprimir `pieces` después de llamar a `pieces.append()`.

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered("pieces.append('Slavonic Dance No. 8')", "print(pieces)")
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']
print(f'Opening piece: {pieces[0]}')
print(f'Closing piece: {pieces[-1]}')
print(f'Number of pieces: {len(pieces)}')

--fcc-editable-region--

--fcc-editable-region--
```
