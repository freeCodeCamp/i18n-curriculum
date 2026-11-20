---
id: 6af5ed07ca44b6bf65eea4ef
title: Passo 7
challengeType: 20
dashedName: step-7
---

# --description--

O método `extend()` adiciona todos os itens de outra lista ao final de uma lista. Se você usasse `append()` em vez disso, a lista inteira seria adicionada como um único item, criando uma lista aninhada.

Crie uma variável chamada `extra_pieces` e atribua a ela uma lista contendo as strings `Serenade for Strings` e `Cello Concerto in B Minor`, nessa ordem. Depois, use `extend()` para adicionar os itens de `extra_pieces` ao final de `pieces`.

# --hints--

Você deve ter uma variável chamada `extra_pieces`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

Você deve atribuir a `extra_pieces` uma lista contendo as strings `Serenade for Strings` e `Cello Concerto in B Minor`, nessa ordem.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

Você deve chamar `pieces.extend()` com `extra_pieces` como argumento.

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
