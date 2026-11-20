---
id: 6af5ed0a4cff454a5badb566
title: Passo 10
challengeType: 20
dashedName: step-10
---

# --description--

O violinista convidado pediu para tocar uma peça diferente em vez de `Silent Woods`, que agora está no índice `1`.

Como listas são mutáveis, você pode substituir um item atribuindo um novo valor ao seu índice:

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

Substitua o item no índice `1` de `pieces` pela string `Romance for Violin`.

# --hints--

Você deve atribuir a string `Romance for Violin` a `pieces[1]`.

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
