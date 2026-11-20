---
id: 6af5ed0588b6497dfddeeeb8
title: Passaggio 5
challengeType: 20
dashedName: step-5
---

# --description--

Le liste sono mutabili, il che significa che puoi modificarle dopo averle create.

Il metodo `append()` aggiunge un elemento alla fine di una lista. Modifica la lista sul posto, quindi non devi riassegnare il risultato alla variabile:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

Il direttore d'orchestra vuole concludere il concerto con un brano vivace. Usa `append()` per aggiungere la stringa `Slavonic Dance No. 8` alla fine di `pieces`. Poi, stampa `pieces` per vedere la lista aggiornata.

# --hints--

Dovresti chiamare `pieces.append()` con la stringa `Slavonic Dance No. 8`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

Dovresti stampare `pieces` dopo aver chiamato `pieces.append()`.

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
