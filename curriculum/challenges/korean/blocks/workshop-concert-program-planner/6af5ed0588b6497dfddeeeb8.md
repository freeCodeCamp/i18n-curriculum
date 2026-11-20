---
id: 6af5ed0588b6497dfddeeeb8
title: 5단계
challengeType: 20
dashedName: step-5
---

# --description--

리스트는 변경 가능하므로 생성한 후에도 수정할 수 있습니다.

`append()` 메서드는 리스트 끝에 항목을 추가합니다. 리스트를 제자리에서 수정하므로 결과를 변수에 다시 할당할 필요가 없습니다:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

지휘자는 활기찬 곡으로 콘서트를 마무리하고 싶어 합니다. `append()`를 사용해 문자열 `Slavonic Dance No. 8`을 `pieces` 끝에 추가하세요. 그런 다음 `pieces`를 출력해 업데이트된 리스트를 확인하세요.

# --hints--

`pieces.append()`를 호출할 때 문자열 `Slavonic Dance No. 8`을 인수로 넣으세요.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

`pieces.append()`를 호출한 후에 `pieces`를 출력하세요.

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
