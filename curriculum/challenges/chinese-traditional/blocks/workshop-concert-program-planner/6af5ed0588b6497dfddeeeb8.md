---
id: 6af5ed0588b6497dfddeeeb8
title: 第 5 步
challengeType: 20
dashedName: step-5
---

# --description--

列表是可變的，這表示你可以在創建後更改它們。

`append()` 方法會將一個項目添加到列表的末尾。它會直接修改列表，因此你不需要將結果重新指定給變數：

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

指揮想用一首活潑的曲子結束音樂會。使用 `append()` 將字串 `Slavonic Dance No. 8` 添加到 `pieces` 的末尾。然後，列印 `pieces` 以查看更新後的列表。

# --hints--

你應該使用字串 `Slavonic Dance No. 8` 呼叫 `pieces.append()`。

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

你應該在呼叫 `pieces.append()` 後列印 `pieces`。

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
