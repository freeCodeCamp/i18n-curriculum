---
id: 6af5ed0beae849400fb2f9fb
title: 12단계
challengeType: 20
dashedName: step-12
---

# --description--

다음으로, 프로그램에서 곡을 찾아내는 함수를 작성하세요.

`in` 연산자를 사용해 문자열에 부분 문자열이 포함되어 있는지 확인했던 것처럼, 리스트에 항목이 있는지 확인할 때도 사용할 수 있습니다. `index()` 메서드는 항목이 처음 나타나는 인덱스를 반환합니다.

`find_piece`라는 이름의 함수를 두 개의 매개변수 `piece`와 `program`으로 정의하세요. 그 안에서 `if` 문을 사용해 `piece`가 `program`에 있는지 확인하세요. 만약 있다면, `piece`가 프로그램에서 몇 번째인지 `1`부터 세어 보여주는 f-string을 반환하세요. 위치를 구하려면 `piece`의 인덱스에 `1`을 더하세요.

예를 들어, `find_piece('Slavonic Dance No. 8', pieces)`는 `Slavonic Dance No. 8 is piece number 4.`를 반환해야 합니다.

# --hints--

`piece`와 `program` 두 매개변수를 가진 `find_piece` 함수를 정의하세요.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

`find_piece` 함수 안에 `piece`가 `program`에 있는지 확인하는 `if` 문이 있어야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

`if` 문은 `f'{piece} is piece number {program.index(piece) + 1}.'`를 반환해야 합니다.

```js
({ test: () => runPython(`
body = _Node(_code).find_function("find_piece").find_ifs()[0].find_bodies()[0]
assert any(
  body.is_equivalent(code)
  for code in [
    "return f'{piece} is piece number {program.index(piece) + 1}.'",
    "return f'{piece} is piece number {1 + program.index(piece)}.'"
  ]
)
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


--fcc-editable-region--

--fcc-editable-region--
```
