---
id: 67f39babe1e2ec1fb6eea32a
title: 딕셔너리와 세트 검토
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 딕셔너리

- **딕셔너리**: 딕셔너리는 키-값 쌍 컬렉션을 저장하는 내장 자료 구조입니다. 키는 변경 불가능한 데이터 타입이어야 합니다. 파이썬 딕셔너리의 일반 구문은 다음과 같습니다:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` 생성자**: `dict()` 생성자는 딕셔너리를 만드는 또 다른 방법입니다. `dict()` 생성자에 튜플 리스트를 인수로 전달합니다. 이 튜플들은 첫 번째 요소로 키를, 두 번째 요소로 값을 포함합니다.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **대괄호 표기법**: 키-값 쌍의 값을 접근하려면 대괄호 표기법으로 알려진 구문을 사용할 수 있습니다.

```python
dictionary[key]
```

## 일반적인 딕셔너리 메서드

- **`get()` 메서드**: `get()` 메서드는 키와 연결된 값을 가져옵니다. 대괄호 표기법과 비슷하지만, 키가 없을 때 오류를 방지하기 위해 기본값을 설정할 수 있습니다.

```python
dictionary.get(key, default)
```

- **`keys()` 및 `values()` 메서드**: `keys()` 와 `values()` 메서드는 각각 딕셔너리의 모든 키와 값을 포함하는 뷰 객체를 반환합니다. 뷰 객체는 데이터를 별도로 복사하지 않고 딕셔너리 내용을 볼 수 있는 방법입니다.

```python
pizza = {
    'name': 'Margherita Pizza',
    'price': 8.9,
    'calories_per_slice': 250
}

pizza.keys()
# dict_keys(['name', 'price', 'calories_per_slice'])

pizza.values()
# dict_values(['Margherita Pizza', 8.9, 250])
```

- **`items()` 메서드**: `items()` 메서드는 키와 값 모두를 포함하는 모든 키-값 쌍의 뷰 객체를 반환합니다.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` 메서드**: `clear()` 메서드는 딕셔너리의 모든 키-값 쌍을 제거합니다.

```python
pizza.clear()
```

- **`pop()` 메서드**: `pop()` 메서드는 첫 번째 인수로 지정된 키를 가진 키-값 쌍을 제거하고 그 값을 반환합니다. 키가 없으면 두 번째 인수로 지정된 기본값을 반환합니다. 기본값이 없고 키가 없으면 `KeyError` 예외가 발생합니다.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` 메서드**: 파이썬 3.7 이상에서 `popitem()` 메서드는 마지막에 삽입된 항목을 제거합니다.

```python
pizza.popitem()
```

- **`update()` 메서드**: `update()` 메서드는 다른 딕셔너리의 키-값 쌍으로 현재 딕셔너리를 업데이트합니다. 공통 키가 있으면 값이 덮어쓰여지고, 새 키는 새로운 키-값 쌍으로 추가됩니다.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 딕셔너리 순회하기

- **값 순회하기**: 딕셔너리의 값을 순회해야 할 때는 `for` 루프를 `values()` 와 함께 작성하여 딕셔너리의 모든 값을 얻을 수 있습니다.

```python
products = {
    'Laptop': 990,
    'Smartphone': 600,
    'Tablet': 250,
    'Headphones': 70,
}

for price in products.values():
    print(price)
```

출력:

```md
990
600
250
70
```

- **키 순회하기**: 위 `products` 딕셔너리의 키를 순회해야 할 때는 `products.keys()` 또는 `products` 를 직접 작성할 수 있습니다.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

출력:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **키-값 쌍 순회하기**: 키와 해당 값을 동시에 순회해야 할 때는 `products.items()` 를 순회할 수 있습니다. 키와 해당 값이 포함된 개별 튜플을 얻습니다.

```python
for product in products.items():
    print(product)
```

출력:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

키와 값을 별도의 루프 변수에 저장하려면 쉼표로 구분해야 합니다. 첫 번째 변수는 키를, 두 번째 변수는 값을 저장합니다.

```python
for product, price in products.items():
    print(product, price)
```

출력:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **`enumerate()` 함수**: 카운터를 추적하면서 딕셔너리를 순회해야 할 때 `enumerate()` 함수를 호출할 수 있습니다. 이 함수는 각 항목에 정수를 할당하는 `enumerate` 객체를 반환합니다. 카운터는 기본적으로 0부터 시작하지만 원하는 숫자부터 시작할 수 있습니다.

인덱스와 항목을 별도의 루프 변수에 할당하는 것이 `enumerate()` 를 사용하는 일반적인 방법입니다. 예를 들어 `products.items()` 을 사용하면 인덱스뿐 아니라 전체 키-값 쌍도 얻을 수 있습니다:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

출력:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

카운트의 초기값을 사용자 지정하려면 `enumerate()` 에 두 번째 인수를 전달할 수 있습니다. 예를 들어 여기서는 1부터 카운트를 시작합니다.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

출력:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## 세트

- **세트**: 세트는 파이썬 내장 자료 구조로 중복 값을 허용하지 않습니다. 세트는 변경 가능하고 순서가 없으므로 특정 순서로 저장되지 않아 인덱스나 키로 접근할 수 없습니다. 또한 세트는 숫자, 문자열, 튜플 같은 변경 불가능한 데이터 타입의 값만 포함할 수 있습니다.

- **세트 정의하기**: 세트를 정의하려면 중괄호 안에 요소를 작성하고 쉼표로 구분하세요.

```python
my_set = {1, 2, 3, 4, 5}
```

- **빈 세트 정의하기**: 빈 세트를 정의하려면 `set()` 함수를 사용해야 합니다. 빈 중괄호만 작성하면 자동으로 딕셔너리가 생성됩니다.

```python
set() # Set
{}    # Dictionary
```

## 일반적인 세트 메서드

- **`add()` 메서드**: `add()` 메서드로 세트에 요소를 추가할 수 있으며, 새 요소를 인수로 전달합니다.

```python
my_set.add(6)
```

- **`remove()` 및 `discard()` 메서드**: 세트에서 요소를 제거하려면 `remove()` 메서드 또는 `discard()` 메서드를 사용할 수 있으며, 제거할 요소를 인수로 전달합니다. `remove()` 메서드는 요소가 없으면 `KeyError` 예외를 발생시키지만 `discard()` 메서드는 발생시키지 않습니다.

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` 메서드**: `clear()` 메서드는 세트의 모든 요소를 제거합니다.

```python
my_set.clear()
```

## 수학적 세트 연산

- **`issubset()` 및 `issuperset()` 메서드**: `issubset()` 와 `issuperset()` 메서드는 각각 한 세트가 다른 세트의 부분집합인지 또는 상위집합인지 확인합니다.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()` 메서드**: `isdisjoint()` 메서드는 두 세트가 공통 요소가 없으면 서로소인지 확인합니다.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **합집합 연산자 (`|`)**: 합집합 연산자 `|` 는 두 세트의 모든 요소를 포함하는 새 세트를 반환합니다.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **교집합 연산자 (`&`)**: 교집합 연산자 `&` 는 두 세트가 공통으로 가진 요소만 포함하는 새 세트를 반환합니다.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **차집합 연산자 (`-`)**: 차집합 연산자 `-` 는 첫 번째 세트에만 있고 다른 세트에는 없는 요소를 포함하는 새 세트를 반환합니다.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **대칭 차집합 연산자 (`^`)**: 대칭 차집합 연산자 `^` 는 첫 번째 세트 또는 두 번째 세트 중 하나에만 있는 요소를 포함하는 새 세트를 반환합니다.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in` 연산자**: `in` 연산자로 요소가 세트에 있는지 확인할 수 있습니다.

```python
print(5 in my_set) # True
```

## 파이썬 표준 라이브러리

- **파이썬 표준 라이브러리**: 라이브러리는 함수, 클래스, 자료 구조 같은 미리 작성되고 재사용 가능한 코드를 제공하여 프로젝트에서 재사용할 수 있게 합니다. 파이썬은 많은 문제와 작업에 표준화된 솔루션을 구현하는 내장 모듈을 포함하는 광범위한 표준 라이브러리를 갖추고 있습니다. 인기 있는 내장 모듈 예로는 `math`, `random`, `re` (정규 표현식의 약자), `datetime` 등이 있습니다.

## import 문

- **import 문**: 내장 모듈에 정의된 요소에 접근하려면 import 문을 사용하세요. import 문은 일반적으로 파일 상단에 작성합니다. import 문은 함수, 클래스, 상수, 변수 및 모듈에 정의된 다른 모든 요소에 대해 동일하게 작동합니다.

- **기본 import 문**: `import` 키워드 다음에 모듈 이름을 작성할 수 있습니다:

```python
import module_name
```

그런 다음 해당 모듈의 함수를 호출하려면 모듈 이름 다음에 함수 이름을 점 표기법으로 작성합니다.

```python
module_name.function_name()
```

예를 들어, `math` 모듈을 가져와 36의 제곱근을 구하려면 다음과 같이 작성합니다:

```python
import math

math.sqrt(36)
```

- **다른 이름으로 모듈 가져오기**: 모듈을 다른 이름(별칭)으로 가져와야 할 때는 import 문 끝에 `as` 다음에 별칭을 작성하세요. 긴 모듈 이름이나 이름 충돌을 피하려고 자주 사용합니다.

```python
import module_name as module_alias
```

예를 들어, `math` 모듈을 코드에서 `m` 로 참조하려면 다음과 같이 별칭을 지정할 수 있습니다:

```python
import math as m
```

그런 다음 별칭을 사용해 모듈의 요소에 접근할 수 있습니다:

```python
m.sqrt(36)
```

- **특정 요소 가져오기**: 모듈 전체가 필요 없으면 `from` 를 사용해 특정 요소만 가져올 수 있습니다. 이 경우 import 문은 `from` 로 시작하고 모듈 이름, `import` 키워드, 가져올 요소 이름을 차례로 작성합니다.

```python
from module_name import name1, name2
```

그런 다음 파이썬 스크립트에서 모듈 접두사 없이 이 이름들을 사용할 수 있습니다. 예를 들어:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
이 방법은 유용하지만, 이미 같은 이름의 함수나 변수가 있을 경우 이름 충돌이 발생할 수 있으니 주의하세요.

이 이름들에 별칭을 지정해야 할 경우 `as` 키워드 다음에 별칭을 작성해 지정할 수 있습니다.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **별표(*)를 사용한 import 문 (`*`)**: 별표는 해당 모듈의 모든 것을 가져오지만 모듈 이름을 접두사로 사용하지 않아도 된다는 뜻입니다.

```python
from module_name import *
```

예를 들어 `math` 모듈을 이렇게 가져오면 모듈 이름 접두사 없이 그 모듈에 정의된 모든 함수를 호출할 수 있습니다.

```python
from math import *
print(sqrt(36))  # 6.0
```

하지만 일반적으로 권장하지 않습니다. 네임스페이스 충돌이 발생하고 이름 출처를 알기 어려워질 수 있기 때문입니다.

## `if __name__ == '__main__'`

- **`__name__` 변수**: `__name__` 은 파이썬의 특별한 내장 변수입니다. 파이썬 파일을 직접 실행하면 이 변수의 값이 문자열 `"__main__"` 로 설정됩니다. 하지만 파이썬 파일이 다른 스크립트에 모듈로 가져와지면 `__name__` 변수의 값은 그 모듈 이름으로 설정됩니다.

이 때문에 파이썬 스크립트에서 이 조건문을 자주 볼 수 있습니다. 이 조건문 안에는 파이썬 스크립트가 메인 프로그램으로 실행될 때만 실행하고 싶은 코드가 들어 있습니다.

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

딕셔너리와 세트 주제 및 개념을 검토하세요.
