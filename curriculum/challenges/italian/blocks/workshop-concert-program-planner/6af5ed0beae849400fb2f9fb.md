---
id: 6af5ed0beae849400fb2f9fb
title: Passaggio 12
challengeType: 20
dashedName: step-12
---

# --description--

Ora scriverai una funzione per trovare un brano nel programma.

Proprio come hai usato l'operatore `in` per verificare se una stringa contiene una sottostringa, puoi usarlo per controllare se un elemento è in una lista. Il metodo `index()` restituisce l'indice della prima occorrenza di un elemento.

Definisci una funzione chiamata `find_piece` con due parametri, `piece` e `program`. Al suo interno, usa un'istruzione `if` per verificare se `piece` è in `program`. Se lo è, restituisci una f-string che mostra la posizione di `piece` nel programma, contando da `1`. Per ottenere la posizione, aggiungi `1` all'indice di `piece`.

Per esempio, `find_piece('Slavonic Dance No. 8', pieces)` dovrebbe restituire `Slavonic Dance No. 8 is piece number 4.`

# --hints--

Dovresti definire una funzione chiamata `find_piece` con due parametri, `piece` e `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

La tua funzione `find_piece` dovrebbe avere un'istruzione `if` che verifica se `piece` è in `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

La tua istruzione `if` dovrebbe restituire `f'{piece} is piece number {program.index(piece) + 1}.'`.

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
