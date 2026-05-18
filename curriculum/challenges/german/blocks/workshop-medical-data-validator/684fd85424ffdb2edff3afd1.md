---
id: 684fd85424ffdb2edff3afd1
title: Schritt 26
challengeType: 20
dashedName: step-26
---

# --description--

Jetzt sehen Sie `{'patient_id': None}` im Terminal ausgegeben, weil die Kleinbuchstaben `p` nicht mit `P1001` übereinstimmen und der `and`-Operator den ersten falsy-Wert des Ausdrucks zurückgibt.

Sie möchten sicherstellen, dass die Patienten-ID mit dem Buchstaben `p` beginnt, wobei es egal ist, ob dieser in Klein- oder Großbuchstaben geschrieben ist. Um das Suchverhalten von regulären Ausdrücken zu ändern, können Sie Flags verwenden. Zum Beispiel akzeptiert `re.search` ein drittes Argument, um beliebige Flags anzugeben:

```py
import re

greeting = "Hello there!"
print(re.search('hello', greeting)) # None

print(re.search('hello', greeting, re.IGNORECASE))
# <re.Match object; span=(0, 5), match='Hello'>
```

Fügen Sie `re.IGNORECASE` als drittes Argument zu Ihrem `re.search`-Aufruf hinzu. Dadurch wird Ihre Regex-Suche nicht mehr zwischen Groß- und Kleinbuchstaben unterscheiden.

Danach sehen Sie, dass `None` durch das Match-Objekt `<re.Match object; span=(0, 1), match='P'>` ersetzt wird, wobei `match` die Übereinstimmung angibt und `span` deren Position im String angibt.

# --hints--

Sie sollten `re.IGNORECASE` als drittes Argument zu Ihrem `re.search`-Aufruf hinzufügen.

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
