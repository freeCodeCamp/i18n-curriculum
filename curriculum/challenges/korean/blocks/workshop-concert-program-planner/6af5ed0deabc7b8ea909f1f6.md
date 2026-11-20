---
id: 6af5ed0deabc7b8ea909f1f6
title: 14단계
challengeType: 20
dashedName: step-14
---

# --description--

콘서트는 중간에 인터미션이 있습니다. 작업하기 전에 터미널을 깔끔하게 유지하려면 `find_piece`의 두 `print()` 호출을 제거하세요.

리스트는 문자열을 자르는 것과 같은 방식으로 `my_list[start:end]` 구문을 사용해 자를 수 있습니다. 결과는 새로운 리스트입니다.

`half`라는 변수를 만들고 `pieces`의 길이를 `2`로 나눈 몫을 할당하세요. 그런 다음 `before_intermission`이라는 변수를 만들고 `pieces`의 처음부터 `half` 인덱스 바로 전까지의 슬라이스를 할당하세요.

마지막으로 f-string을 사용해 `Before intermission:`과 공백, 그리고 `before_intermission`을 출력하세요.

# --hints--

`find_piece`의 두 `print()` 호출을 제거해야 합니다.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

`half`라는 변수가 있어야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

`len(pieces) // 2`를 `half`에 할당해야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

`before_intermission`이라는 변수가 있어야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

`pieces[:half]`를 `before_intermission`에 할당해야 합니다.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

`f'Before intermission: {before_intermission}'`를 출력해야 합니다.

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
