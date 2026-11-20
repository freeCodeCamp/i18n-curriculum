---
id: 685118ddcad14fa5d62faaef
title: 단계 33
challengeType: 20
dashedName: step-33
---

# --description--

`is`와 `is not`는 객체 동일성을 비교한다는 점을 기억하세요. 여기서 `None`은 진단이 없음을 나타내므로, 특정 객체를 확인하려면 `diagnosis is None`을 사용하세요. 일반적인 거짓값 검사는 `0`이나 `False` 같은 값도 일치시키는데, 이들은 유효한 진단이 아닙니다.

이제 `diagnosis` 딕셔너리에 `constraints` 키를 추가하세요. 그 값으로 `diagnosis`가 `str`의 인스턴스이거나 `None`인지 확인하는 표현식을 작성하세요.

# --hints--

`constraints` 딕셔너리에 `diagnosis` 키가 있어야 합니다.

```js
({ test: () => assert(runPython(`
_ast_keys = _Node(_code).find_function("find_invalid_records").find_variable("constraints").tree.value.keys
_keys = [k.value for k in _ast_keys]
'diagnosis' in _keys
`)) })
```

`diagnosis` 딕셔너리의 `constraints` 키는 `isinstance(diagnosis, str) or diagnosis is None` 값을 가져야 합니다.

```js
({ test: () => assert(runPython(`
_target = _Node(_code).find_function("find_invalid_records").find_variable("constraints").tree.value
_keys = [k.value for k in _target.keys]
_index = _keys.index('diagnosis')
_val = _target.values[_index]
_first = "isinstance(diagnosis, str) or diagnosis is None"
_second = "diagnosis is None or isinstance(diagnosis, str)"
_Node(_val).is_equivalent(_first) or _Node(_val).is_equivalent(_second)
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
        'patient_id': isinstance(patient_id, str) and re.fullmatch(r'p\d+', patient_id, re.IGNORECASE),
        'age': isinstance(age, int) and age >= 18,
--fcc-editable-region--
        'gender': isinstance(gender, str) and gender.lower() in ('male', 'female')
        
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
