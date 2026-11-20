---
id: 6af5ed0a4cff454a5badb566
title: ステップ 10
challengeType: 20
dashedName: step-10
---

# --description--

ゲストのバイオリニストが、現在インデックス `1` にある `Silent Woods` の代わりに別の曲を演奏したいと頼んでいます。

リストは変更可能なので、インデックスに新しい値を代入することで項目を置き換えられます。

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

`pieces` のインデックス `1` の項目を文字列 `Romance for Violin` に置き換えてください。

# --hints--

文字列 `Romance for Violin` を `pieces[1]` に代入してください。

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
