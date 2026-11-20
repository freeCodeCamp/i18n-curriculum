---
id: 6af5ed0a4cff454a5badb566
title: Schritt 10
challengeType: 20
dashedName: step-10
---

# --description--

Der Gastgeiger hat darum gebeten, ein anderes Stück statt `Silent Woods` zu spielen, das sich jetzt am Index `1` befindet.

Da Listen veränderbar sind, können Sie ein Element ersetzen, indem Sie einen neuen Wert seinem Index zuweisen:

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

Ersetzen Sie das Element am Index `1` von `pieces` durch den String `Romance for Violin`.

# --hints--

Sie sollten den String `Romance for Violin` `pieces[1]` zuweisen.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces[1] = 'Romance for Violin'")
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
extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']
pieces.extend(extra_pieces)
pieces.remove('Song to the Moon')
removed_piece = pieces.pop()
print(f'Removed from the program: {removed_piece}')

--fcc-editable-region--

--fcc-editable-region--
print(pieces)
```
