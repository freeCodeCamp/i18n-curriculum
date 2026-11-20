---
id: 6af5ed0a4cff454a5badb566
title: 10단계
challengeType: 20
dashedName: step-10
---

# --description--

객원 바이올리니스트가 현재 인덱스 `1`에 있는 `Silent Woods` 대신 다른 곡을 연주해 달라고 요청했어요.

리스트는 변경할 수 있으므로, 인덱스에 새 값을 할당하여 항목을 바꿀 수 있어요:

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

`pieces`의 인덱스 `1`에 있는 항목을 문자열 `Romance for Violin`으로 바꾸세요.

# --hints--

`pieces[1]`에 문자열 `Romance for Violin`을 할당하세요.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces[1] = 'Romance for Violin'")
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
extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']
pieces.extend(extra_pieces)
pieces.remove('Song to the Moon')
removed_piece = pieces.pop()
print(f'Removed from the program: {removed_piece}')

--fcc-editable-region--

--fcc-editable-region--
print(pieces)
```
