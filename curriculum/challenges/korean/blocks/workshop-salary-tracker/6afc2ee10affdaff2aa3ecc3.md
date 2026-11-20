---
id: 6afc2ee10affdaff2aa3ecc3
title: 41단계
challengeType: 20
dashedName: step-41
---

# --description--

이제 `charlie_brown`에게 월급 인상을 해줄 시간입니다. 코드 맨 아래에 `charlie_brown.salary`를 `2550.5`로 설정하세요.

그다음 콘솔을 확인하세요. `salary` 설정자가 `Salary updated to $2550.50.`를 출력하는데, 이는 `.2f`가 항상 소수점 둘째 자리까지 표시하기 때문이며 `Salary updated to $2550.5.`가 아닙니다.

이로써 월급 추적기 워크숍이 완료되었습니다!

# --hints--

코드 맨 아래에 `charlie_brown.salary`를 `2550.5`로 설정하세요.

```js
({ test: () => assert(runPython(`_Node(_code).has_stmt("charlie_brown.salary = 2550.5")`)) })
```

`charlie_brown`의 월급은 `junior`로 레벨이 변경된 후 `2550.5`여야 합니다.

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
