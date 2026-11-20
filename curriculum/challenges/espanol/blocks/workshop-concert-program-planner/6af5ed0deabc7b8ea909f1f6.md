---
id: 6af5ed0deabc7b8ea909f1f6
title: Paso 14
challengeType: 20
dashedName: step-14
---

# --description--

El concierto tendrá un intermedio a la mitad. Antes de trabajar en ello, elimina las dos llamadas `print()` de `find_piece` para mantener limpio el terminal.

Puedes cortar una lista de la misma manera que cortas una cadena, con la sintaxis `my_list[start:end]`. El resultado es una nueva lista.

Crea una variable llamada `half` y asígnale la longitud de `pieces` dividida por piso entre `2`. Luego, crea una variable llamada `before_intermission` y asígnale un corte de `pieces` desde el principio hasta, pero sin incluir, el índice `half`.

Finalmente, usa una f-string para imprimir `Before intermission:` seguido de un espacio y `before_intermission`.

# --hints--

Debes eliminar las dos llamadas `print()` de `find_piece`.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

Debes tener una variable llamada `half`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

Debes asignar `len(pieces) // 2` a `half`.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

Debes tener una variable llamada `before_intermission`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

Debes asignar `pieces[:half]` a `before_intermission`.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

Debes imprimir `f'Before intermission: {before_intermission}'`.

```js
({ test: () => runPython(`
assert _Node(_code).has_call("print(f'Before intermission: {before_intermission}')")
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


def find_piece(piece, program):
    if piece in program:
        return f'{piece} is piece number {program.index(piece) + 1}.'
    return f'{piece} is not in the program.'



--fcc-editable-region--
print(find_piece('Serenade for Strings', pieces))
print(find_piece('Stabat Mater', pieces))

--fcc-editable-region--
```
