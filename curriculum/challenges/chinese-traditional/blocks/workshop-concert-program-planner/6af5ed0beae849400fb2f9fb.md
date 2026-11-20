---
id: 6af5ed0beae849400fb2f9fb
title: 第 12 步驟
challengeType: 20
dashedName: step-12
---

# --description--

接下來，你將撰寫一個函式，用來查找程式中的一個曲目。

就像你使用 `in` 運算子來檢查字串是否包含子字串一樣，你也可以用它來檢查一個項目是否在列表中。`index()` 方法會傳回項目第一次出現的索引值。

定義一個名為 `find_piece` 的函式，帶有兩個參數：`piece` 和 `program`。在函式內，使用 `if` 述語檢查 `piece` 是否在 `program` 中。如果是，傳回一個 f-string，顯示 `piece` 在程式中的位置，從 `1` 開始計數。要取得位置，將 `piece` 的索引加上 `1`。

例如，`find_piece('Slavonic Dance No. 8', pieces)` 應該傳回 `Slavonic Dance No. 8 is piece number 4.`

# --hints--

你應該定義一個名為 `find_piece` 的函式，帶有兩個參數：`piece` 和 `program`。

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

你的 `find_piece` 函式應該包含一個 `if` 述語，用來檢查 `piece` 是否在 `program` 中。

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

你的 `if` 述語應該傳回 `f'{piece} is piece number {program.index(piece) + 1}.'`。

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
