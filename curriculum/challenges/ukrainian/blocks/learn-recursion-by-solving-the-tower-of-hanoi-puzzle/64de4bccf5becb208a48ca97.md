---
id: 64de4bccf5becb208a48ca97
title: Крок 13
challengeType: 20
dashedName: step-13
---

# --description--

У головоломці "Вежа Ханоя" можна визначити три стрижні за їх призначенням:

- Перший стрижень — це джерело, де на початку гри всі диски складені один на одного.
- Другий стрижень — допоміжний, він допомагає переміщувати диски до цільового стрижня.
- Третій стрижень — це ціль, куди наприкінці гри всі диски мають бути розташовані у правильному порядку.

Наразі функція `move()` не приймає жодних параметрів. Змініть оголошення функції так, щоб вона приймала 4 параметри: `n`, `source`, `auxiliary` і `target`. Потім передайте `NUMBER_OF_DISKS` і рядки `'A'`, `'B'` і `'C'` як аргументи у виклик функції. Порядок має значення.

# --hints--

Ваша функція `move()` має мати параметри `n`, `source`, `auxiliary` і `target`. Порядок має значення.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

Ви маєте передати `NUMBER_OF_DISKS` і рядки `'A'`, `'B'` і `'C'` у `move()`. Порядок має значення.

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
