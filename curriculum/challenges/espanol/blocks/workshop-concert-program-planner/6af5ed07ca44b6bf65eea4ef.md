---
id: 6af5ed07ca44b6bf65eea4ef
title: Paso 7
challengeType: 20
dashedName: step-7
---

# --description--

El método `extend()` agrega todos los elementos de otra lista al final de una lista. Si usaras `append()` en lugar de eso, la lista entera se agregaría como un solo elemento, creando una lista anidada.

Crea una variable llamada `extra_pieces` y asígnale una lista que contenga las cadenas `Serenade for Strings` y `Cello Concerto in B Minor`, en ese orden. Luego, usa `extend()` para agregar los elementos de `extra_pieces` al final de `pieces`.

# --hints--

Debes tener una variable llamada `extra_pieces`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

Debes asignar a `extra_pieces` una lista que contenga las cadenas `Serenade for Strings` y `Cello Concerto in B Minor`, en ese orden.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

Debes llamar a `pieces.extend()` con `extra_pieces` como argumento.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.extend(extra_pieces)")
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']
print(f'Opening piece: {pieces[0]}')
print(f'Closing piece: {pieces[-1]}')
print(f'Number of pieces: {len(pieces)}')

pieces.append('Slavonic Dance No. 8')
pieces.insert(3, 'Slavonic Dance No. 1')
--fcc-editable-region--

--fcc-editable-region--
print(pieces)
```
