---
id: 6af5ed0588b6497dfddeeeb8
title: Passo 5
challengeType: 20
dashedName: step-5
---

# --description--

Listas são mutáveis, o que significa que você pode mudá-las depois de criá-las.

O método `append()` adiciona um item ao final de uma lista. Ele modifica a lista no lugar, então você não precisa reatribuir o resultado à variável:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

O maestro quer terminar o concerto com uma peça animada. Use `append()` para adicionar a string `Slavonic Dance No. 8` ao final de `pieces`. Depois, imprima `pieces` para ver a lista atualizada.

# --hints--

Você deve chamar `pieces.append()` com a string `Slavonic Dance No. 8`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

Você deve imprimir `pieces` depois de chamar `pieces.append()`.

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
