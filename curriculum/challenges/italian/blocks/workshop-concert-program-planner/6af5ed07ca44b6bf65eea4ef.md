---
id: 6af5ed07ca44b6bf65eea4ef
title: Passaggio 7
challengeType: 20
dashedName: step-7
---

# --description--

Il metodo `extend()` aggiunge tutti gli elementi di un'altra lista alla fine di una lista. Se usassi `append()` invece, l'intera lista verrebbe aggiunta come un singolo elemento, creando una lista annidata.

Crea una variabile chiamata `extra_pieces` e assegnale una lista contenente le stringhe `Serenade for Strings` e `Cello Concerto in B Minor`, in questo ordine. Poi, usa `extend()` per aggiungere gli elementi di `extra_pieces` alla fine di `pieces`.

# --hints--

Dovresti avere una variabile chiamata `extra_pieces`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

Dovresti assegnare a `extra_pieces` una lista contenente le stringhe `Serenade for Strings` e `Cello Concerto in B Minor`, in questo ordine.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

Dovresti chiamare `pieces.extend()` con `extra_pieces` come argomento.

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
