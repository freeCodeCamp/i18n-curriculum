---
id: 6aeaec9c8f05dde6a77e511f
title: 파이썬에서 공유 리스트는 어떻게 동작할까요?
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

이름이 객체를 참조하고 리스트는 변경 가능하다는 것을 배웠습니다. 이제 두 개 이상의 이름이 같은 리스트를 참조할 때 어떤 일이 일어나는지 살펴보겠습니다.

## 같은 값의 리스트와 별칭 비교하기

두 리스트가 같은 값을 가질 수 있지만 동일한 객체는 아닐 수 있습니다. `==`는 값의 동등성을 확인하고, `is`는 동일성을 확인한다는 점을 기억하세요:

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

각 `['milk']` 표현식은 별도의 리스트를 만듭니다. 그러나 `alias = items`는 복사본을 만들지 않고 기존 리스트에 다른 이름을 바인딩합니다. 이 다른 이름을 별칭이라고 부릅니다.

어느 이름을 통해 리스트를 변경해도 다른 이름을 통해 그 변경이 보입니다:

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

별도의 `equal_items` 리스트는 변경되지 않았습니다.

## 함수 매개변수를 통한 리스트 변경

인수는 할당으로 전달됩니다. 매개변수는 호출자가 제공한 객체에 처음 바인딩된 지역 이름입니다. 파이썬은 그 객체를 자동으로 복사하지 않습니다.

여기서 매개변수 `items`와 호출자의 변수 `groceries`는 같은 리스트를 참조합니다:

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

`append()`를 호출하면 공유 리스트가 변경됩니다. 함수에 `return` 문이 없으므로 `None`을 반환하지만, 리스트에 대한 변경은 호출자에게 여전히 보입니다.

지역 매개변수를 재할당하면 다른 효과가 나타납니다:

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

할당은 지역 이름 `items`가 새 리스트를 참조하게 만듭니다. 원래 리스트를 변경하거나 호출자의 변수 `groceries`를 재할당하지 않습니다.

## 새 리스트 반환하기

함수는 전달받은 리스트를 변경하는 대신 새 리스트를 만들어 반환할 수 있습니다. `+` 연산자는 리스트를 연결하여 그 요소를 포함하는 새 외부 리스트를 만듭니다:

```py
def with_extra_item(items):
    return items + ['eggs']

groceries = ['milk']
alias = groceries

groceries = with_extra_item(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk']
print(groceries is alias) # False
```

호출자는 반환된 리스트를 `groceries`에 할당합니다. 이름 `alias`는 여전히 원래 리스트를 참조합니다. 반환값을 할당하거나 사용하지 않고 함수를 호출하면 `groceries`도 원래 리스트를 참조하게 됩니다.

연결은 새 외부 리스트를 만들지만 중첩 객체는 복사하지 않습니다. 요소가 리스트라면 새 외부 리스트는 그 같은 내부 리스트에 대한 참조를 포함합니다.

## 리스트에서 `+`와 `+=` 비교하기

내장 리스트에서 `items = items + [...]`는 새 리스트를 만들고 `items`를 재할당합니다. 반면 `items += [...]`는 기존 리스트를 제자리에서 확장합니다:

```py
def add_with_plus(items):
    items = items + ['eggs']

def add_with_plus_equals(items):
    items += ['eggs']

groceries = ['milk']
alias = groceries

add_with_plus(groceries)
print(groceries) # ['milk']
print(alias) # ['milk']

add_with_plus_equals(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
```

첫 번째 함수에서는 지역 이름만 새 리스트를 참조합니다. 두 번째 함수에서는 공유 리스트가 변경되고 지역 이름도 여전히 그것을 참조합니다. 그래서 리스트에 다른 참조가 있을 때 `+=`는 덧셈 후 할당과 교환할 수 없습니다.

## 기본 인수로 리스트 사용하기

기본 인수는 호출자가 인수를 생략할 때 값을 제공합니다. 빈 리스트를 기본값으로 사용하면 함수 정의 시 한 번만 그 리스트를 만듭니다. 인수를 생략한 호출은 같은 리스트를 재사용합니다:

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

두 번째 호출은 첫 번째 호출이 변경한 리스트를 받습니다. 각 호출은 자체 지역 매개변수 이름을 가지지만 그 이름은 같은 기본 객체를 참조합니다. 리스트는 호출 사이에 다시 비어 있지 않습니다.

각 호출이 리스트를 제공하지 않을 때 새 리스트로 시작해야 한다면 기본값으로 `None`을 사용하고 함수 내부에서 리스트를 만드세요:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

여기서 `items = []`는 인수가 생략되거나 명시적으로 `None`으로 전달될 때마다 실행되어 그 호출을 위한 새 리스트를 만듭니다.

기존 리스트를 전달하여 변경할 수도 있습니다:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

groceries = []
add_item('milk', groceries)
add_item('eggs', groceries)
print(groceries) # ['milk', 'eggs']
```

`items is None` 검사는 누락된 리스트와 호출자가 제공한 빈 리스트를 구분합니다. `if not items`를 사용하면 빈 리스트도 일치하여 새 리스트로 바꾸므로 호출자의 빈 리스트가 추가 항목을 받지 못합니다.

## 중첩 리스트에 대한 참조 반복

`[0] * 3` 같은 리스트 반복이 어떻게 리스트를 만드는지 보았습니다. 반복은 새 외부 리스트를 만들지만 요소를 복사하지 않고 참조를 반복합니다.

이것은 요소가 변경 가능할 때 중요합니다:

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

`[[]]` 표현식은 하나의 내부 리스트를 만듭니다. 반복하면 그 같은 내부 리스트에 대한 참조가 세 위치 모두에 놓입니다. `rows[0]`을 통해 변경하면 모든 위치에서 보입니다.

`numbers = [0] * 3`에서 `numbers[0] = 1`은 하나의 요소 참조를 교체합니다; 변경 불가능한 정수 `0`을 변경하지 않습니다. 그래서 다른 위치는 여전히 `0`입니다.

별도의 내부 리스트가 필요하면 각각 따로 만드세요:

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

이 모듈 후반부에서 리스트 내포가 원하는 수의 별도 내부 리스트를 만드는 방법을 배울 것입니다.

# --questions--

## --text--

다음 코드는 무엇을 출력할까요?

```py
def update(items):
    items.append('b')
    items = ['c']

letters = ['a']
update(letters)
print(letters)
```

## --answers--

`['a']`

### --feedback--

추가는 공유 리스트를 변경하고, 재할당은 지역 이름만 변경합니다.

---

`['c']`

### --feedback--

추가는 공유 리스트를 변경하고, 재할당은 지역 이름만 변경합니다.

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

추가는 공유 리스트를 변경하고, 재할당은 지역 이름만 변경합니다.

## --video-solution--

3

## --text--

`items = ['milk']`와 `alias = items` 후, 어떤 문장이 `alias`가 참조하는 리스트에 `'eggs'`를 추가할까요?

## --answers--

`items = items + ['eggs']`

### --feedback--

어떤 연산이 기존 리스트를 제자리에서 확장하는지 생각하세요.

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

어떤 연산이 기존 리스트를 제자리에서 확장하는지 생각하세요.

---

`items + ['eggs']`

### --feedback--

어떤 연산이 기존 리스트를 제자리에서 확장하는지 생각하세요.

## --video-solution--

2

## --text--

`rows = [[]] * 3` 후 `rows[0]`에 추가하면 왜 세 위치 모두 새 항목을 표시할까요?

## --answers--

각 위치가 같은 내부 리스트를 참조하기 때문입니다.

---

파이썬은 각 변경을 별도 내부 리스트로 자동 복사하지 않습니다.

### --feedback--

리스트 반복은 요소 자체를 복사하지 않고 요소에 대한 참조를 반복합니다.

---

`append()` 메서드는 항상 프로그램 내 모든 리스트를 변경하지 않습니다.

### --feedback--

리스트 반복은 요소 자체를 복사하지 않고 요소에 대한 참조를 반복합니다.

---

곱셈 연산자가 `append()`를 세 번 실행하지 않습니다.

### --feedback--

리스트 반복은 요소 자체를 복사하지 않고 요소에 대한 참조를 반복합니다.

## --video-solution--

1
