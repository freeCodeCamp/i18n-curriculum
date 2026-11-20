---
id: 6af5ed07ca44b6bf65eea4ef
title: ステップ 7
challengeType: 20
dashedName: step-7
---

# --description--

`extend()` メソッドは、別のリストのすべてのアイテムをリストの末尾に追加します。もし代わりに `append()` を使うと、リスト全体が単一のアイテムとして追加され、ネストされたリストが作成されます。

`extra_pieces` という変数を作成し、`Serenade for Strings` と `Cello Concerto in B Minor` という文字列をこの順番で含むリストを代入してください。その後、`extend()` を使って `extra_pieces` のアイテムを `pieces` の末尾に追加してください。

# --hints--

`extra_pieces` という変数を用意してください。

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

`extra_pieces` に `Serenade for Strings` と `Cello Concerto in B Minor` という文字列をこの順番で含むリストを代入してください。

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

`pieces.extend()` を呼び出し、引数として `extra_pieces` を渡してください。

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
