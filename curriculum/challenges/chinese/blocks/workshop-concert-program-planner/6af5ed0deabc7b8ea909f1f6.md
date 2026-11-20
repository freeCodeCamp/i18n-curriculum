---
id: 6af5ed0deabc7b8ea909f1f6
title: 步骤14
challengeType: 20
dashedName: step-14
---

# --description--

音乐会将在中途有一个中场休息。在你开始之前，移除两个对 `find_piece` 的 `print()` 调用，以保持终端整洁。

你可以像切片字串一样切片列表，语法是 `my_list[start:end]`。结果是一个新的列表。

创建一个名为 `half` 的变量，并赋值为 `pieces` 长度整除 `2` 的结果。然后，创建一个名为 `before_intermission` 的变量，并赋值为 `pieces` 从开头到但不包括索引 `half` 的切片。

最后，使用 f-string 打印 `Before intermission:`，后面跟一个空格和 `before_intermission`。

# --hints--

你应该移除两个对 `find_piece` 的 `print()` 调用。

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

你应该有一个名为 `half` 的变量。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

你应该将 `len(pieces) // 2` 赋值给 `half`。

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

你应该有一个名为 `before_intermission` 的变量。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

你应该将 `pieces[:half]` 赋值给 `before_intermission`。

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

你应该打印 `f'Before intermission: {before_intermission}'`。

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
