---
id: 67fe85a3db9bad35f2b6a2bd
title: 조건문과 논리 연산자는 어떻게 작동할까요?
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

조건문, 또는 조건문들은 특정 조건이 참인지 거짓인지에 따라 프로그램의 흐름을 제어할 수 있게 해줍니다.

하지만 그 전에, 조건문의 기본 구성 요소부터 살펴보겠습니다. 비교 연산자부터 시작할게요. 비교 연산자는 두 개 이상의 값을 비교하고 불리언 값을 반환하는 연산자입니다.

이전 수업에서 불리언이 Python의 데이터 타입 중 하나이며, `True` 또는 `False`만 가질 수 있다는 것을 배웠습니다.

다음은 Python의 비교 연산자 표입니다:

| 연산자 | 이름 | 설명 |
| --- | --- | --- |
| `==` | 같음 | 두 값이 같은지 확인합니다 |
| `!=` | 같지 않음 | 두 값이 같지 않은지 확인합니다 |
| `>` | 크다 | 왼쪽 값이 오른쪽 값보다 큰지 확인합니다 |
| `<` | 작다 | 왼쪽 값이 오른쪽 값보다 작은지 확인합니다 |
| `>=` | 크거나 같다 | 왼쪽 값이 오른쪽 값보다 크거나 같은지 확인합니다 |
| `<=` | 작거나 같다 | 왼쪽 값이 오른쪽 값보다 작거나 같은지 확인합니다 |

다음은 `True` 또는 `False`로 평가되는 몇 가지 표현식입니다:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

이 연산자들은 조건문에서 값을 비교하고 조건이 `True` 또는 `False`으로 평가되는지에 따라 특정 코드를 실행하는 데 사용할 수 있습니다.

Python에서 가장 기본적인 조건문은 `if` 문입니다. 기본 구문은 다음과 같습니다:

```python
if condition:
    pass # Code to execute if condition is True
```

* `if` 문은 `if` 키워드로 시작합니다.
    
* `condition`는 `True` 또는 `False`으로 평가되는 표현식이며, 콜론(`:`)으로 끝납니다.

* `if` 문의 본문은 <dfn>코드 블록</dfn>으로, 함께 묶인 문장 그룹입니다. Python에서는 들여쓰기 수준이 코드 블록을 정의합니다.
    
위 예제에서 `if` 문의 본문에는 `pass` 문이 포함되어 있습니다. `pass` 문이 실행되면 아무 일도 일어나지 않습니다. 이는 미래 코드를 위한 자리 표시자로 사용할 수 있는 특별한 키워드이며, 빈 코드 블록이 허용되지 않을 때 유용합니다.

`if` 문의 본문 내 코드는 조건이 `True`로 평가될 때만 실행됩니다. 예를 들어:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

`print('You are an adult')` 앞의 들여쓰기에 주목하세요. 다른 프로그래밍 언어들은 중괄호 같은 문자를 사용해 코드 블록을 정의하고 들여쓰기는 가독성을 위해 사용하지만, Python에서는 들여쓰기가 코드 블록을 결정합니다.

다음 코드는 `IndentationError`를 발생시키는데, 이는 Python이 코드의 특정 지점에서 들여쓰기가 필요함을 알리는 방식입니다:

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

들여쓰기 수준을 결정할 때 일관성만 유지한다면 공백 수는 얼마든지 사용할 수 있지만, Python 스타일 가이드는 네 칸 공백을 권장합니다.

블록은 앞으로 배울 반복문과 함수에서도 발견됩니다.

예제로 돌아가서, `age`이 `18`보다 작으면 터미널에 아무것도 출력되지 않습니다:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

그런데 `age`이 `18`보다 작을 때도 무언가 출력하고 싶다면 어떻게 할까요? 그럴 때 `else` 절이 필요합니다. `else` 절은 `if` 조건이 거짓일 때 실행됩니다. `if…else` 문의 구문은 다음과 같습니다:

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

예를 들어:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

`if` 블록과 `else` 절 사이에 어떤 문장도 넣을 수 없다는 점에 유의하세요. 다음 코드는 `SyntaxError`를 발생시킵니다:

```python
age = 12

if age >= 18:
    print('You are an adult')
print('Almost there!')
else: # SyntaxError: invalid syntax
    print('You are not an adult yet')
```

여러 조건을 고려해야 하는 상황이 있을 수 있습니다. 이를 위해 Python은 if 문을 `elif` (else if) 키워드로 확장할 수 있게 합니다.

구문은 다음과 같습니다:

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

예를 들어:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

`elif` 절을 원하는 만큼 사용할 수 있다는 점도 기억하세요:

```python
age = 2

if age >= 65:
    print('You are a senior citizen')
elif age >= 30:
    print('You are an adult in your prime')
elif age >= 18:
    print('You are a young adult')
elif age >= 13:
    print('You are a teenager')
elif age >= 3:
    print('You are a young child')
else:
    print('You are a toddler or an infant') # You are a toddler or an infant
```

이제 비교 연산자와 조건문이 Python에서 어떻게 작동하는지 이해했으니, 논리와 입력에 따라 결정을 내리는 프로그램을 작성할 수 있습니다. 값을 비교하거나 여러 조건을 분기하는 등, 이 도구들은 유연하고 반응형 코드를 작성하는 기초입니다.

# --questions--

## --text--

비교 연산자는 무엇을 하나요?

## --answers--

불리언 값으로 수학 계산을 수행합니다.

### --feedback--

이 연산자들은 두 값이 같은지, 어느 값이 더 큰지 등을 확인하며, 결과는 `True` 또는 `False`입니다.

---

문자열을 불리언 값으로 변환합니다.

### --feedback--

이 연산자들은 두 값이 같은지, 어느 값이 더 큰지 등을 확인하며, 결과는 `True` 또는 `False`입니다.

---

두 값을 비교하고 불리언 값을 반환합니다.

---

반복문과 반복을 만듭니다.

### --feedback--

이 연산자들은 두 값이 같은지, 어느 값이 더 큰지 등을 확인하며, 결과는 `True` 또는 `False`입니다.

## --video-solution--

3

## --text--

다음 코드의 결과는 무엇일까요?

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') 
```

## --answers--

`You are an adult`가 콘솔에 출력됩니다.

### --feedback--

정답은 수업 마지막 부분을 검토하세요.

---

`You are a teenager`가 콘솔에 출력됩니다.

### --feedback--

정답은 수업 마지막 부분을 검토하세요.

---

`You are a child`가 콘솔에 출력됩니다.

---

오류가 콘솔에 출력됩니다.

### --feedback--

정답은 수업 마지막 부분을 검토하세요.

## --video-solution--

3

## --text--

표현식 `3 >= 4`는 어떤 값으로 평가될까요?

## --answers--

`True`

### --feedback--

3은 4보다 크거나 같지 않습니다.

---

`SyntaxError`

### --feedback--

3은 4보다 크거나 같지 않습니다.

---

`None`

### --feedback--

3은 4보다 크거나 같지 않습니다.

---

`False`

## --video-solution--

4
