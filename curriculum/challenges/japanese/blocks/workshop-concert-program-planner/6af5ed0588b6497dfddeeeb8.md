---
id: 6af5ed0588b6497dfddeeeb8
title: ステップ 5
challengeType: 20
dashedName: step-5
---

# --description--

リストはミュータブルなので、作成後に変更できます。

`append()` メソッドはリストの末尾にアイテムを追加します。リストをその場で変更するので、結果を変数に再代入する必要はありません。

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

指揮者はコンサートを活気のある曲で締めくくりたいと考えています。`append()` を使って文字列 `Slavonic Dance No. 8` を `pieces` の末尾に追加してください。その後、`pieces` を出力して更新されたリストを確認しましょう。

# --hints--

文字列 `Slavonic Dance No. 8` を使って `pieces.append()` を呼び出してください。

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

`pieces.append()` を呼び出した後に `pieces` を出力してください。

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
