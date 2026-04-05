---
id: 68caa8fb3bed34833ef24aee
title: 29단계
challengeType: 20
dashedName: step-29
---

# --description--

레벨이 변경되면 급여도 업데이트해야 합니다.

`self._level`를 설정하기 전에 `self._salary`을 새 레벨의 기본 급여로 설정하세요.

# --hints--

`self._salary`를 새 레벨의 기본 급여로 설정해야 합니다.

```js
({ test: () => runPython(`
  emp = Employee('Frank', 'trainee')
  new_levels = ['junior', 'mid-level', 'senior']
  for new_level in new_levels:
    emp.level = new_level
    assert emp.salary == Employee._base_salaries.get(new_level)
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
        if not (isinstance(name, str) and isinstance(level, str)):
            raise TypeError("'name' and 'level' attribute must be of type 'str'.")
        if level not in Employee._base_salaries:
            raise ValueError(f"Invalid value '{level}' for 'level' attribute.")
        self._name = name
        self._level = level
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
        if new_level not in Employee._base_salaries:
            raise ValueError(f"Invalid value '{new_level}' for 'level' attribute.")
        if new_level == self.level:
            raise ValueError(f"'{self.level}' is already the selected level.")
        if Employee._base_salaries[new_level] < Employee._base_salaries[self.level]:
            raise ValueError(f"Cannot change to lower level.")
--fcc-editable-region--
        
        self._level = new_level
--fcc-editable-region--
    @property
    def salary(self):
        return self._salary

charlie_brown = Employee('Charlie Brown', 'trainee')
print(charlie_brown)
print(f'Base salary: ${charlie_brown.salary}')
```
