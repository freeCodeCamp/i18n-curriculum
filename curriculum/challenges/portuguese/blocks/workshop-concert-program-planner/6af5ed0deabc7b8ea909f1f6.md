---
id: 6af5ed0deabc7b8ea909f1f6
title: Passo 14
challengeType: 20
dashedName: step-14
---

# --description--

O concerto terá um intervalo na metade. Antes de trabalhar nisso, remova as duas chamadas `print()` de `find_piece` para manter o terminal limpo.

Você pode fatiar uma lista da mesma forma que fatiar uma string, com a sintaxe `my_list[start:end]`. O resultado é uma nova lista.

Crie uma variável chamada `half` e atribua a ela o comprimento de `pieces` dividido por piso por `2`. Depois, crie uma variável chamada `before_intermission` e atribua a ela uma fatia de `pieces` do início até, mas sem incluir, o índice `half`.

Por fim, use uma f-string para imprimir `Before intermission:` seguido de um espaço e `before_intermission`.

# --hints--

Você deve remover as duas chamadas `print()` de `find_piece`.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

Você deve ter uma variável chamada `half`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

Você deve atribuir `len(pieces) // 2` a `half`.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

Você deve ter uma variável chamada `before_intermission`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

Você deve atribuir `pieces[:half]` a `before_intermission`.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

Você deve imprimir `f'Before intermission: {before_intermission}'`.

```js
({ test: () => runPython(`
assert _Node(_code).has_call("print(f'Before intermission: {before_intermission}')")
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


def find_piece(piece, program):
    if piece in program:
        return f'{piece} is piece number {program.index(piece) + 1}.'
    return f'{piece} is not in the program.'



--fcc-editable-region--
print(find_piece('Serenade for Strings', pieces))
print(find_piece('Stabat Mater', pieces))

--fcc-editable-region--
```
