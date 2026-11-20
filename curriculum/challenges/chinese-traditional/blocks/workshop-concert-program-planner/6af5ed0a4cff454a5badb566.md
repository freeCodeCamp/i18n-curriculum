---
id: 6af5ed0a4cff454a5badb566
title: 第 10 步
challengeType: 20
dashedName: step-10
---

# --description--

客席小提琴手要求演奏不同的曲目，而不是現在位於索引 `1` 的 `Silent Woods`。

由於列表是可變的，你可以透過指定新值給索引來替換條款：

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

將 `pieces` 中索引 `1` 的條款替換為字串 `Romance for Violin`。

# --hints--

你應該將字串 `Romance for Violin` 指定給 `pieces[1]`。

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
