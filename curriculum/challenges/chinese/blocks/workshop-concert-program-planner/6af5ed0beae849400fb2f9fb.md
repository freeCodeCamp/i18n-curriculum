---
id: 6af5ed0beae849400fb2f9fb
title: 第 12 步
challengeType: 20
dashedName: step-12
---

# --description--

接下来，你将编写一个函数来查找程序中的一首曲子。

就像你使用 `in` 操作符来查看字串是否包含子串一样，你也可以用它来查看某项是否在列表中。`index()` 方法返回某项首次出现的索引。

定义一个名为 `find_piece` 的函数，带有两个参数：`piece` 和 `program`。在函数内部，使用 `if` 语句查看 `piece` 是否在 `program` 中。如果是，返回一个 f-string，显示 `piece` 在程序中的位置，计数从 `1` 开始。要获得位置，给 `piece` 的索引加上 `1`。

例如，`find_piece('Slavonic Dance No. 8', pieces)` 应该返回 `Slavonic Dance No. 8 is piece number 4.`

# --hints--

你应该定义一个名为 `find_piece` 的函数，带有两个参数：`piece` 和 `program`。

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

你的 `find_piece` 函数应该包含一个 `if` 语句，用来查看 `piece` 是否在 `program` 中。

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

你的 `if` 语句应该返回 `f'{piece} is piece number {program.index(piece) + 1}.'`。

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
