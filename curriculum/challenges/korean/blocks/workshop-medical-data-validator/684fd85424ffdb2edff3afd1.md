---
id: 684fd85424ffdb2edff3afd1
title: 26단계
challengeType: 20
dashedName: step-26
---

# --description--

소문자 `{'patient_id': None}`가 `p`와 일치하지 않고 `P1001` 연산자가 표현식의 첫 번째 거짓 같은 값을 반환하기 때문에 `and`가 터미널에 출력되는 것을 볼 수 있습니다.

환자 ID가 `p` 문자로 시작하는지 확인하고 싶지만, 소문자나 대문자 모두 허용됩니다. 정규 표현식의 일치 동작을 수정하려면 플래그를 사용할 수 있습니다. 예를 들어, `re.search`는 세 번째 인수로 플래그를 지정할 수 있습니다.

```py
import re

greeting = "Hello there!"
print(re.search('hello', greeting)) # None

print(re.search('hello', greeting, re.IGNORECASE))
# <re.Match object; span=(0, 5), match='Hello'>
```

`re.IGNORECASE` 호출에 세 번째 인수로 `re.search`를 추가하세요. 이렇게 하면 정규식 검색이 대소문자를 구분하지 않게 됩니다.

그 후에는 `None`가 일치 객체 `<re.Match object; span=(0, 1), match='P'>`로 교체된 것을 볼 수 있는데, 여기서 `match`은 일치를 나타내고 `span`은 문자열 내 위치를 나타냅니다.

# --hints--

`re.IGNORECASE` 호출에 세 번째 인수로 `re.search`를 추가해야 합니다.

```js
({ test: () => assert(runPython(`
_var = _Node(_code).find_function("find_invalid_records").find_variable("constraints")
_first = "constraints = {'patient_id': isinstance(patient_id, str) and re.search('p', patient_id, flags=re.IGNORECASE)}"
_second = "constraints = {'patient_id': isinstance(patient_id, str) and re.search('p', patient_id, re.IGNORECASE)}"
_var.is_equivalent(_first) or _var.is_equivalent(_second)
`)) })
```

# --seed--

## --seed-contents--

```py
import re

medical_records = [
    {
        'patient_id': 'P1001',
        'age': 34,
        'gender': 'Female',
        'diagnosis': 'Hypertension',
        'medications': ['Lisinopril'],
        'last_visit_id': 'V2301',
    },
    {
        'patient_id': 'p1002',
        'age': 47,
        'gender': 'male',
        'diagnosis': 'Type 2 Diabetes',
        'medications': ['Metformin', 'Insulin'],
        'last_visit_id': 'v2302',
    },
    {
        'patient_id': 'P1003',
        'age': 29,
        'gender': 'female',
        'diagnosis': 'Asthma',
        'medications': ['Albuterol'],
        'last_visit_id': 'v2303',
    },
    {
        'patient_id': 'p1004',
        'age': 56,
        'gender': 'Male',
        'diagnosis': 'Chronic Back Pain',
        'medications': ['Ibuprofen', 'Physical Therapy'],
        'last_visit_id': 'V2304',
    }
]

def find_invalid_records(
    patient_id, age, gender, diagnosis, medications, last_visit_id
):
    constraints = {
--fcc-editable-region--
        'patient_id': isinstance(patient_id, str) and re.search('p', patient_id)
--fcc-editable-region--
    }
    return constraints

def validate(data):
    is_sequence = isinstance(data, (list, tuple))

    if not is_sequence:
        print('Invalid format: expected a list or tuple.')
        return False
        
    is_invalid = False
    key_set = set(
        ['patient_id', 'age', 'gender', 'diagnosis', 'medications', 'last_visit_id']
    )

    for index, dictionary in enumerate(data):
        if not isinstance(dictionary, dict):
            print(f'Invalid format: expected a dictionary at position {index}.')
            is_invalid = True

        if set(dictionary.keys()) != key_set:
            print(
                f'Invalid format: {dictionary} at position {index} has missing and/or invalid keys.'
            )
            is_invalid = True

    if is_invalid:
        return False
    print('Valid format.')
    return True

validate(medical_records)
print(find_invalid_records(**medical_records[0]))
```
