---
id: 64de4bccf5becb208a48ca97
title: 13단계
challengeType: 20
dashedName: step-13
---

# --description--

하노이의 탑 퍼즐에서 세 개의 막대는 용도에 따라 구분할 수 있습니다:

- 첫 번째 막대는 출발지로, 게임 시작 시 모든 원판이 차곡차곡 쌓여 있는 곳입니다.
- 두 번째 막대는 보조 막대로, 원판을 목표 막대로 옮기는 데 도움을 줍니다.
- 세 번째 막대는 목표지로, 게임이 끝날 때 모든 원판이 순서대로 놓여야 하는 곳입니다.

현재 `move()` 함수는 매개변수를 받지 않습니다. 함수 선언을 `n`, `source`, `auxiliary`, `target` 네 개의 매개변수를 받도록 변경하세요. 그런 다음 함수 호출 시 `NUMBER_OF_DISKS`와 문자열 `'A'`, `'B'`, `'C'`을 인수로 전달하세요. 순서가 중요합니다.

# --hints--

`move()` 함수는 `n`, `source`, `auxiliary`, `target` 네 개의 매개변수를 가져야 합니다. 순서가 중요합니다.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

`NUMBER_OF_DISKS`와 문자열 `'A'`, `'B'`, `'C'`을 `move()`에 전달해야 합니다. 순서가 중요합니다.

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
