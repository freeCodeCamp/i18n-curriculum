---
id: 6af5ed0deabc7b8ea909f1f6
title: 第 14 步
challengeType: 20
dashedName: step-14
---

# --description--

音樂會將在中途有一個中場休息。在你開始處理之前，先移除兩個 `find_piece` 的 `print()` 呼叫，以保持終端機的整潔。

你可以用和切割字串相同的方式切割列表，語法是 `my_list[start:end]`。結果會是一個新的列表。

創建一個名為 `half` 的變數，並將 `pieces` 的長度整除 `2` 的結果指定給它。接著，創建一個名為 `before_intermission` 的變數，並將 `pieces` 從開頭到（但不包含）索引 `half` 的切片指定給它。

最後，使用 f-string 列印 `Before intermission:`，後面接一個空格和 `before_intermission`。

# --hints--

你應該移除兩個 `find_piece` 的 `print()` 呼叫。

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

你應該有一個名為 `half` 的變數。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

你應該將 `len(pieces) // 2` 指定給 `half`。

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

你應該有一個名為 `before_intermission` 的變數。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

你應該將 `pieces[:half]` 指定給 `before_intermission`。

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

你應該列印 `f'Before intermission: {before_intermission}'`。

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
