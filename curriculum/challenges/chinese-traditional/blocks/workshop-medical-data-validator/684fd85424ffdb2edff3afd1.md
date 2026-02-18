---
id: 684fd85424ffdb2edff3afd1
title: 步驟 26
challengeType: 20
dashedName: step-26
---

# --description--

現在你可以看到 `{'patient_id': None}` 被列印到終端機，因為小寫的 `p` 與 `P1001` 不符，且 `and` 運算子傳回該表達式的第一個假值。

你想確保病患 ID 以字母 `p` 開頭，但它可以是小寫或大寫。要修改正規表達式的匹配行為，你可以使用旗標。<dfn>例如</dfn>，`re.search` 接受第三個引數來指定任何旗標：

```py
import re

greeting = "Hello there!"
print(re.search('hello', greeting)) # None

print(re.search('hello', greeting, re.IGNORECASE))
# <re.Match object; span=(0, 5), match='Hello'>
```

將 `re.IGNORECASE` 添加為你的 `re.search` 呼叫的第三個引數。這將使你的正規表達式搜尋不區分大小寫。

之後，你會看到 `None` 被匹配物件 `<re.Match object; span=(0, 1), match='P'>` 取代，其中 `match` 顯示匹配，`span` 顯示其在字串中的位置。

# --hints--

你應該將 `re.IGNORECASE` 作為第三個引數添加到你的 `re.search` 呼叫中。

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
