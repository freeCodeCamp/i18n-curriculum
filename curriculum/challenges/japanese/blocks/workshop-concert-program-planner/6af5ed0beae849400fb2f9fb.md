---
id: 6af5ed0beae849400fb2f9fb
title: ステップ 12
challengeType: 20
dashedName: step-12
---

# --description--

次に、プログラム内の曲を検索する関数を書きます。

`in` 演算子を使って文字列に部分文字列が含まれているか確認したように、リストにアイテムが含まれているかどうかも確認できます。`index()` メソッドは、アイテムが最初に現れるインデックスを返します。

`find_piece` という名前の関数を、`piece` と `program` の2つのパラメータで定義してください。その中で `if` 文を使って、`piece` が `program` に含まれているかを確認します。含まれている場合は、`1` から数えたプログラム内での `piece` の位置を示すf文字列を返してください。位置を取得するには、`piece` のインデックスに `1` を足します。

例えば、`find_piece('Slavonic Dance No. 8', pieces)` は `Slavonic Dance No. 8 is piece number 4.` を返すべきです。

# --hints--

`find_piece` という名前の関数を、`piece` と `program` の2つのパラメータで定義してください。

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

`find_piece` 関数には、`piece` が `program` に含まれているか確認する `if` 文が必要です。

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

`if` 文は `f'{piece} is piece number {program.index(piece) + 1}.'` を返すべきです。

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
