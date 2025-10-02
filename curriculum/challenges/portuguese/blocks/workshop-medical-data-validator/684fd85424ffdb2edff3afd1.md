---
id: 684fd85424ffdb2edff3afd1
title: Passo 26
challengeType: 20
dashedName: step-26
---

# --description--

Agora você pode ver `{'patient_id': None}` impresso no terminal porque o `p` minúsculo não corresponde a `P1001` e o operador `and` retorna o primeiro valor falso da expressão.

Você quer garantir que o ID do paciente comece com a letra `p`, mas pode ser minúscula ou maiúscula.Para modificar o comportamento de correspondência das expressões regulares, você pode usar flags.Por exemplo, `re.search` aceita um terceiro argumento para especificar quaisquer flags:

```py
import re

greeting = "Hello there!"
print(re.search('hello', greeting)) # None

print(re.search('hello', greeting, re.IGNORECASE))
# <re.Match object; span=(0, 5), match='Hello'>
```

Adicione `re.IGNORECASE` como o terceiro argumento na sua chamada `re.search`.Isso fará com que sua busca com regex não diferencie maiúsculas de minúsculas.

Depois disso, você verá `None` substituído pelo objeto de correspondência `<re.Match object; span=(0, 1), match='P'>`, onde `match` indica a correspondência e `span` indica sua localização na string.

# --hints--

Você deve adicionar `re.IGNORECASE` como o terceiro argumento na sua chamada `re.search`.

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

--fcc-editable-region--
    constraints = {
        'patient_id': isinstance(patient_id, str) and re.search('p', patient_id)
    }
--fcc-editable-region--

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
