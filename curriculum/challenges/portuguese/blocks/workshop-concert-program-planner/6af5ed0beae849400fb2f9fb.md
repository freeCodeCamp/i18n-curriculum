---
id: 6af5ed0beae849400fb2f9fb
title: Passo 12
challengeType: 20
dashedName: step-12
---

# --description--

A seguir, você vai escrever uma função para buscar um item no programa.

Assim como você usou o operador `in` para verificar se uma string contém uma substring, pode usá-lo para verificar se um item está em uma lista. O método `index()` retorna o índice da primeira ocorrência de um item.

Defina uma função chamada `find_piece` com dois parâmetros, `piece` e `program`. Dentro dela, use uma declaração `if` para verificar se `piece` está em `program`. Se estiver, retorne uma f-string que mostra a posição de `piece` no programa, contando a partir de `1`. Para obter a posição, adicione `1` ao índice de `piece`.

Por exemplo, `find_piece('Slavonic Dance No. 8', pieces)` deve retornar `Slavonic Dance No. 8 is piece number 4.`

# --hints--

Você deve definir uma função chamada `find_piece` com dois parâmetros, `piece` e `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

Sua função `find_piece` deve ter uma declaração `if` que verifica se `piece` está em `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

Sua declaração `if` deve retornar `f'{piece} is piece number {program.index(piece) + 1}.'`.

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
