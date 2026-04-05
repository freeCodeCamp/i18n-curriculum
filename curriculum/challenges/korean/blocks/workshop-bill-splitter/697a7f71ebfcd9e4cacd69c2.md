---
id: 697a7f71ebfcd9e4cacd69c2
title: 8단계
challengeType: 20
dashedName: step-8
---

# --description--

계산서가 나누어졌지만, 나누기 연산은 종종 긴 소수점 숫자를 만듭니다. 돈은 보통 소수점 둘째 자리까지 나타내므로 최종 결과를 반올림해야 합니다.

Python은 이를 위한 내장 `round()` 함수를 제공합니다. 이 함수는 두 개의 인수를 받는데, 반올림할 숫자와 유지할 소수점 자리 수입니다. 예시는 다음과 같습니다:

```py
num = 4.815162342
round(num, 3) # 4.815
```

`round()` 함수를 사용해 `final_bill`를 소수점 둘째 자리까지 반올림하고, 결과를 `each_pays`라는 새 변수에 할당하세요.

마지막으로 `print()`를 사용해 문자열 `Each person pays:`와 공백, 그리고 `each_pays` 변수를 출력하세요.

이로써 계산서 분할 워크숍이 완료됩니다.

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
    test: () => assert(runPython(`
    _Node(_code).has_call("print('Each person pays:', each_pays)") or _Node(_code).has_call("print(f'Each person pays: {each_pays}')")`))
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
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

each_pays = round(final_bill, 2)
print('Each person pays:', each_pays)
```
