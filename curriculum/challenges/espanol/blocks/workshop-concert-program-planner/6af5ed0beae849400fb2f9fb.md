---
id: 6af5ed0beae849400fb2f9fb
title: Paso 12
challengeType: 20
dashedName: step-12
---

# --description--

A continuación, escribirás una función para buscar una pieza en el programa.

Así como usaste el operador `in` para verificar si una cadena contiene una subcadena, puedes usarlo para comprobar si un elemento está en una lista. El método `index()` devuelve el índice de la primera aparición de un elemento.

Define una función llamada `find_piece` con dos parámetros, `piece` y `program`. Dentro, usa una sentencia `if` para verificar si `piece` está en `program`. Si es así, devuelve una f-string que muestre la posición de `piece` en el programa, contando desde `1`. Para obtener la posición, suma `1` al índice de `piece`.

Por ejemplo, `find_piece('Slavonic Dance No. 8', pieces)` debería devolver `Slavonic Dance No. 8 is piece number 4.`

# --hints--

Debes definir una función llamada `find_piece` con dos parámetros, `piece` y `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

Tu función `find_piece` debe tener una sentencia `if` que verifique si `piece` está en `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

Tu sentencia `if` debe devolver `f'{piece} is piece number {program.index(piece) + 1}.'`.

```js
({ test: () => runPython(`
body = _Node(_code).find_function("find_piece").find_ifs()[0].find_bodies()[0]
assert any(
  body.is_equivalent(code)
  for code in [
    "return f'{piece} is piece number {program.index(piece) + 1}.'",
    "return f'{piece} is piece number {1 + program.index(piece)}.'"
  ]
)
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']

pieces.append('Slavonic Dance No. 8')
pieces.insert(3, 'Slavonic Dance No. 1')
extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']
pieces.extend(extra_pieces)
pieces.remove('Song to the Moon')
removed_piece = pieces.pop()

pieces[1] = 'Romance for Violin'
print(pieces)


--fcc-editable-region--

--fcc-editable-region--
```
