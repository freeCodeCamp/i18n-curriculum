---
id: 6af5ed07ca44b6bf65eea4ef
title: 7단계
challengeType: 20
dashedName: step-7
---

# --description--

`extend()` 메서드는 다른 리스트의 모든 항목을 리스트 끝에 추가합니다. 만약 대신 `append()`를 사용하면, 전체 리스트가 하나의 항목으로 추가되어 중첩된 리스트가 만들어집니다.

`extra_pieces`라는 변수를 만들고, `Serenade for Strings`와 `Cello Concerto in B Minor` 문자열을 이 순서대로 포함하는 리스트를 할당하세요. 그런 다음 `extend()`를 사용해 `extra_pieces`의 항목들을 `pieces`의 끝에 추가하세요.

# --hints--

`extra_pieces`라는 변수가 있어야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

`extra_pieces`에 `Serenade for Strings`와 `Cello Concerto in B Minor` 문자열을 이 순서대로 포함하는 리스트를 할당해야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

`pieces.extend()`를 호출할 때 인수로 `extra_pieces`를 전달해야 합니다.

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
