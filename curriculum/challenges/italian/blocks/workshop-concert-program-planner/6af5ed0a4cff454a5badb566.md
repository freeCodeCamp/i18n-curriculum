---
id: 6af5ed0a4cff454a5badb566
title: Passaggio 10
challengeType: 20
dashedName: step-10
---

# --description--

Il violinista ospite ha chiesto di suonare un brano diverso invece di `Silent Woods`, che ora si trova all'indice `1`.

Poiché le liste sono mutabili, puoi sostituire un elemento assegnando un nuovo valore al suo indice:

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

Sostituisci l'elemento all'indice `1` di `pieces` con la stringa `Romance for Violin`.

# --hints--

Dovresti assegnare la stringa `Romance for Violin` a `pieces[1]`.

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
