---
id: 6af5ed0deabc7b8ea909f1f6
title: Schritt 14
challengeType: 20
dashedName: step-14
---

# --description--

Das Konzert wird zur Hälfte eine Pause haben. Bevor Sie daran arbeiten, entfernen Sie die beiden `print()`-Aufrufe von `find_piece`, um das Terminal sauber zu halten.

Sie können eine Liste auf die gleiche Weise schneiden wie einen String, mit der Syntax `my_list[start:end]`. Das Ergebnis ist eine neue Liste.

Erstellen Sie eine Variable namens `half` und weisen Sie ihr die Länge von `pieces` zu, ganzzahlig geteilt durch `2`. Erstellen Sie dann eine Variable namens `before_intermission` und weisen Sie ihr einen Ausschnitt von `pieces` vom Anfang bis, aber ohne den Index `half` zu inkludieren, zu.

Verwenden Sie schließlich einen f-String, um `Before intermission:` gefolgt von einem Leerzeichen und `before_intermission` auszugeben.

# --hints--

Sie sollten die beiden `print()`-Aufrufe von `find_piece` entfernen.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

Sie sollten eine Variable namens `half` haben.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

Sie sollten `len(pieces) // 2` `half` zuweisen.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

Sie sollten eine Variable namens `before_intermission` haben.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

Sie sollten `pieces[:half]` `before_intermission` zuweisen.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

Sie sollten `f'Before intermission: {before_intermission}'` ausgeben.

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
