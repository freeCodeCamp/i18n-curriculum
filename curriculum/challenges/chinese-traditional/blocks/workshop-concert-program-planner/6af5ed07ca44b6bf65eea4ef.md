---
id: 6af5ed07ca44b6bf65eea4ef
title: 第 7 步
challengeType: 20
dashedName: step-7
---

# --description--

`extend()` 方法會將另一個列表的所有條款添加到列表的末尾。如果你改用 `append()`，整個列表會作為單一條款被添加，形成巢狀列表。

創建一個名為 `extra_pieces` 的變數，並指定一個包含字串 `Serenade for Strings` 和 `Cello Concerto in B Minor`（依此順序）的列表。然後，使用 `extend()` 將 `extra_pieces` 的條款添加到 `pieces` 的末尾。

# --hints--

你應該有一個名為 `extra_pieces` 的變數。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

你應該為 `extra_pieces` 指定一個包含字串 `Serenade for Strings` 和 `Cello Concerto in B Minor`（依此順序）的列表。

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

你應該呼叫 `pieces.extend()`，並以 `extra_pieces` 作為引數。

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
