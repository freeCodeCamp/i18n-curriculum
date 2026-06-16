---
id: 68caaaef4afb18aab8a684d4
title: Schritt 35
challengeType: 20
dashedName: step-35
---

# --description--

Es ist Zeit, Ihren neuen Setter zu testen. Versuchen Sie, ungültige Werte wie einen zufälligen String oder das aktuelle Level (`trainee`) an `charlie_brown.level` zuzuweisen, und sehen Sie sich die Fehlermeldungen in der Konsole an.

Nachdem Sie das gemacht haben, entfernen Sie die Zeilen, die Fehler auslösen, und setzen Sie `charlie_brown.level` auf den String `junior`.

# --hints--

Sie sollten `charlie_brown.level` auf den String `junior` setzen.

```js
({ test: () => assert(runPython(`_Node(_code).has_stmt("charlie_brown.level = 'junior'")`)) })
```

# --seed--

## --seed-contents--

```py
class Employee:
    _base_salaries = {
        'trainee': 1000,
        'junior': 2000,
        'mid-level': 3000,
        'senior': 4000,
    }

    def __init__(self, name, level):
        self.name = name
        self.level = level
        self._salary = Employee._base_salaries[level]

    def __str__(self):
        return f'{self.name}: {self.level}'

    def __repr__(self):
        return f"Employee('{self.name}', '{self.level}')"

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, new_name):
        if not isinstance(new_name, str):
            raise TypeError("'name' must be a string.")
        self._name = new_name
        print(f"'name' updated to '{self.name}'.")

    @property
    def level(self):
        return self._level

    @level.setter
    def level(self, new_level):
        if not isinstance(new_level, str):
            raise TypeError("'level' must be a string.")
        if new_level not in Employee._base_salaries:
            raise ValueError(f"Invalid value '{new_level}' for 'level' attribute.")
        if hasattr(self, '_level') and new_level == self.level:
            raise ValueError(f"'{self.level}' is already the selected level.")
        if hasattr(self, '_level') and Employee._base_salaries[new_level] < Employee._base_salaries[self.level]:
            raise ValueError("Cannot change to lower level.")
        print(f"'{self.name}' promoted to '{new_level}'.")
        self._salary = Employee._base_salaries[new_level]
        self._level = new_level

    @property
    def salary(self):
        return self._salary

charlie_brown = Employee('Charlie Brown', 'trainee')
print(charlie_brown)
print(f'Base salary: ${charlie_brown.salary}')
--fcc-editable-region--

--fcc-editable-region--

```
