---
id: 6af5ed07ca44b6bf65eea4ef
title: Schritt 7
challengeType: 20
dashedName: step-7
---

# --description--

Die `extend()`-Methode fügt alle Elemente einer anderen Liste ans Ende einer Liste an. Wenn Sie stattdessen `append()` verwenden, würde die gesamte Liste als ein einzelnes Element hinzugefügt, wodurch eine verschachtelte Liste entsteht.

Erstellen Sie eine Variable namens `extra_pieces` und weisen Sie ihr eine Liste zu, die die Strings `Serenade for Strings` und `Cello Concerto in B Minor` in dieser Reihenfolge enthält. Verwenden Sie dann `extend()`, um die Elemente von `extra_pieces` ans Ende von `pieces` anzufügen.

# --hints--

Sie sollten eine Variable namens `extra_pieces` haben.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

Sie sollten `extra_pieces` eine Liste zuweisen, die die Strings `Serenade for Strings` und `Cello Concerto in B Minor` in dieser Reihenfolge enthält.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

Sie sollten `pieces.extend()` mit `extra_pieces` als Argument aufrufen.

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
