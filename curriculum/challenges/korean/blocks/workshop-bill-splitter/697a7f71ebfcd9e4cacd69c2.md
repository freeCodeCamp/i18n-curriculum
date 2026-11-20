---
id: 697a7f71ebfcd9e4cacd69c2
title: 9단계
challengeType: 20
dashedName: step-9
---

# --description--

지금까지 사용한 `:.2f` 형식 지정자는 숫자가 표시되는 방식만 바꿉니다. 값 자체는 여전히 모든 소수 자릿수를 가지고 있습니다. 실제로 반올림되어 이후 계산에 사용할 수 있는 숫자를 얻으려면 `round()` 함수를 사용하세요.

이전 수업에서 `round()` 함수가 두 개의 인수를 받는다는 것을 배웠습니다: 반올림할 숫자와 유지할 소수 자릿수입니다. 예를 들어 보겠습니다:

```py
num = 4.815162342
round(num, 3) # 4.815
```

`round()` 함수를 사용해 `final_bill`를 소수점 둘째 자리까지 반올림하고, 결과를 `each_pays`라는 새 변수에 할당하세요.

그런 다음 `print()`를 사용해 문자열 `Each person pays:`와 공백, 그리고 `each_pays` 변수를 출력하세요. 이번에는 숫자를 형식화하지 마세요.

# --hints--

`each_pays`라는 변수를 정의하세요.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

`round()` 함수를 사용해 `final_bill`를 소수점 둘째 자리까지 반올림하고, 결과를 `each_pays` 변수에 할당하세요.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

`print()`를 사용해 문자열 `Each person pays:`와 공백, 그리고 `each_pays` 변수를 출력하세요.

```js
({
    test: () => runPython(`
        import io, contextlib, re
        buffer = io.StringIO()
        with contextlib.redirect_stdout(buffer):
            exec(_code)
        assert re.search(r"^Each person pays: 62\\.1$", buffer.getvalue(), re.M)
    `)
})
```

# --seed--

## --seed-contents--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.11

running_total += appetizers + main_courses + desserts + drinks
print(f'Total bill so far: {running_total:.2f}')

tip = running_total * 0.25
print(f'Tip amount: {tip:.2f}')

running_total += tip
print(f'Total with tip: {running_total:.2f}')

final_bill = running_total / num_of_friends
print(f'Bill per person: {final_bill:.2f}')

--fcc-editable-region--

--fcc-editable-region--
```
