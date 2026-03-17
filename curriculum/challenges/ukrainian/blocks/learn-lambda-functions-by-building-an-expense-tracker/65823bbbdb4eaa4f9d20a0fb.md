---
id: 65823bbbdb4eaa4f9d20a0fb
title: Крок 25
challengeType: 20
dashedName: step-25
---

# --description--

У функції `total_expenses` тепер потрібно інтегрувати лямбда-функцію. Замініть `pass` на лямбда-функцію, яка має `expense` як параметр.

`expense` очікується як словник, і ваша лямбда-функція має повертати значення ключа `'amount'` у словнику `expense`.

# --hints--

Ви маєте створити функцію `lambda`, яка використовує параметр `expense` і повертає `expense['amount']` у вашій функції `total_expenses`.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

У вашій функції `pass` не повинно бути `total_expenses`.

```js
({ test: () => assert.isFalse(runPython(`_Node(_code).find_function("total_expenses").has_pass()`)) })
```

# --seed--

## --seed-contents--

```py
def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
--fcc-editable-region--
def total_expenses(expenses):
    pass
--fcc-editable-region--

expenses = []
```
