---
id: 6af5ed0beae849400fb2f9fb
title: Schritt 12
challengeType: 20
dashedName: step-12
---

# --description--

Als Nächstes schreiben Sie eine Funktion, um ein Stück im Programm zu suchen.

So wie Sie den Operator `in` verwendet haben, um zu prüfen, ob ein String eine Teilzeichenfolge enthält, können Sie ihn auch verwenden, um zu prüfen, ob ein Element in einer Liste ist. Die Methode `index()` gibt den Index des ersten Vorkommens eines Elements zurück.

Definieren Sie eine Funktion namens `find_piece` mit zwei Parametern, `piece` und `program`. Verwenden Sie darin eine `if`-Anweisung, um zu prüfen, ob `piece` in `program` ist. Falls ja, geben Sie einen f-String zurück, der die Position von `piece` im Programm anzeigt, beginnend bei `1`. Um die Position zu erhalten, addieren Sie `1` zum Index von `piece`.

Zum Beispiel sollte `find_piece('Slavonic Dance No. 8', pieces)` `Slavonic Dance No. 8 is piece number 4.` zurückgeben.

# --hints--

Sie sollten eine Funktion namens `find_piece` mit zwei Parametern, `piece` und `program`, definieren.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

Ihre Funktion `find_piece` sollte eine `if`-Anweisung enthalten, die prüft, ob `piece` in `program` ist.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

Ihre `if`-Anweisung sollte `f'{piece} is piece number {program.index(piece) + 1}.'` zurückgeben.

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
