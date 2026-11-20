---
id: 6afc2ee10affdaff2aa3ecc3
title: Hatua 41
challengeType: 20
dashedName: step-41
---

# --description--

Sasa, ni wakati wa kumpa `charlie_brown` ongezeko la mshahara. Chini kabisa ya msimbo wako, weka `charlie_brown.salary` kuwa `2550.5`.

Baada ya kufanya hivyo, angalia konsoli. Utaona kuwa setter ya `salary` inachapisha `Salary updated to $2550.50.` badala ya `Salary updated to $2550.5.`, kwa sababu `.2f` daima inaonyesha sehemu mbili za desimali.

Kwa hayo, warsha yako ya kufuatilia mishahara imekamilika!

# --hints--

Unapaswa kuweka `charlie_brown.salary` kuwa `2550.5` chini kabisa ya msimbo wako.

```js
({ test: () => assert(runPython(`_Node(_code).has_stmt("charlie_brown.salary = 2550.5")`)) })
```

Mshahara wa `charlie_brown` unapaswa kuwa `2550.5` baada ya mabadiliko ya kiwango kuwa `junior`.

```js
({ test: () => runPython(`
  assert charlie_brown.level == 'junior'
  assert charlie_brown.salary == 2550.5
`) })
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
        self.salary = Employee._base_salaries[level]

    def __str__(self):
        return f'{self.name}: {self.level}'

    def __repr__(self):
        return f'Employee({self.name!r}, {self.level!r})'

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
        self.salary = Employee._base_salaries[new_level]
        self._level = new_level

    @property
    def salary(self):
        return self._salary

    @salary.setter
    def salary(self, new_salary):
        if not isinstance(new_salary, (int, float)):
            raise TypeError("'salary' must be a number.")
        if hasattr(self, '_level') and new_salary < Employee._base_salaries[self.level]:
            raise ValueError(f'Salary must be higher than minimum salary ${Employee._base_salaries[self.level]:.2f}.')
        self._salary = new_salary
        print(f'Salary updated to ${self.salary:.2f}.')

charlie_brown = Employee('Charlie Brown', 'trainee')
print(charlie_brown)
print(f'Base salary: ${charlie_brown.salary:.2f}')

charlie_brown.level = 'junior'

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

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
        self.salary = Employee._base_salaries[level]

    def __str__(self):
        return f'{self.name}: {self.level}'

    def __repr__(self):
        return f'Employee({self.name!r}, {self.level!r})'

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
        self.salary = Employee._base_salaries[new_level]
        self._level = new_level

    @property
    def salary(self):
        return self._salary

    @salary.setter
    def salary(self, new_salary):
        if not isinstance(new_salary, (int, float)):
            raise TypeError("'salary' must be a number.")
        if hasattr(self, '_level') and new_salary < Employee._base_salaries[self.level]:
            raise ValueError(f'Salary must be higher than minimum salary ${Employee._base_salaries[self.level]:.2f}.')
        self._salary = new_salary
        print(f'Salary updated to ${self.salary:.2f}.')

charlie_brown = Employee('Charlie Brown', 'trainee')
print(charlie_brown)
print(f'Base salary: ${charlie_brown.salary:.2f}')

charlie_brown.level = 'junior'
charlie_brown.salary = 2550.5
```
