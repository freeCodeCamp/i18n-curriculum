---
id: 6af5ed0588b6497dfddeeeb8
title: 第 5 步
challengeType: 20
dashedName: step-5
---

# --description--

列表是可变的，这意味着你可以在创建后更改它们。

`append()` 方法将一项添加到列表的末尾。它会就地修改列表，因此你不需要将结果重新赋值给变量：

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

指挥想用一首活泼的曲子结束音乐会。使用 `append()` 将字串 `Slavonic Dance No. 8` 添加到 `pieces` 的末尾。然后，打印 `pieces` 以查看更新后的列表。

# --hints--

你应该调用 `pieces.append()` 并传入字串 `Slavonic Dance No. 8`。

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

调用 `pieces.append()` 后，你应该打印 `pieces`。

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered("pieces.append('Slavonic Dance No. 8')", "print(pieces)")
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']
print(f'Opening piece: {pieces[0]}')
print(f'Closing piece: {pieces[-1]}')
print(f'Number of pieces: {len(pieces)}')

--fcc-editable-region--

--fcc-editable-region--
```
