---
id: 6af5ed07ca44b6bf65eea4ef
title: 第 7 步
challengeType: 20
dashedName: step-7
---

# --description--

`extend()` 方法将另一个列表的所有项添加到列表的末尾。如果你使用 `append()`，整个列表会作为单个项被添加，形成一个嵌套列表。

创建一个名为 `extra_pieces` 的变量，并赋值一个包含字串 `Serenade for Strings` 和 `Cello Concerto in B Minor`（按此顺序）的列表。然后，使用 `extend()` 将 `extra_pieces` 的项添加到 `pieces` 的末尾。

# --hints--

你应该有一个名为 `extra_pieces` 的变量。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

你应该赋值 `extra_pieces` 一个包含字串 `Serenade for Strings` 和 `Cello Concerto in B Minor`（按此顺序）的列表。

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

你应该调用 `pieces.extend()`，并以 `extra_pieces` 作为参数。

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
