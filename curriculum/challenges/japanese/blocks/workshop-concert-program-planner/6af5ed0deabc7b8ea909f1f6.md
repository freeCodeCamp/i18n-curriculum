---
id: 6af5ed0deabc7b8ea909f1f6
title: ステップ 14
challengeType: 20
dashedName: step-14
---

# --description--

コンサートは途中で休憩があります。作業を始める前に、端末をきれいに保つために `find_piece` の2つの `print()` 呼び出しを削除してください。

リストは文字列と同じようにスライスできます。構文は `my_list[start:end]` です。結果は新しいリストになります。

`half` という変数を作成し、`pieces` の長さを `2` で切り捨て除算した値を代入してください。次に、`before_intermission` という変数を作成し、`pieces` の先頭からインデックス `half` の直前までのスライスを代入してください。

最後に、f文字列を使って `Before intermission:` と空白、その後に `before_intermission` を出力してください。

# --hints--

`find_piece` の2つの `print()` 呼び出しを削除してください。

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

`half` という変数を用意してください。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

`len(pieces) // 2` を `half` に代入してください。

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

`before_intermission` という変数を用意してください。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

`pieces[:half]` を `before_intermission` に代入してください。

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

`f'Before intermission: {before_intermission}'` を出力してください。

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
