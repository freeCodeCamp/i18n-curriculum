---
id: 65823bbbdb4eaa4f9d20a0fb
title: Paso 25
challengeType: 20
dashedName: step-25
---

# --description--

En la función `total_expenses`, ahora integrarás una función lambda. Reemplaza `pass` con una función lambda que tenga `expense` como su parámetro.

`expense` se espera que sea un diccionario, y tu función lambda debe devolver el valor de la clave `'amount'` en el diccionario `expense`.

# --hints--

Debes crear una función `lambda` que use el parámetro `expense` y retorne `expense['amount']` en tu función `total_expenses`.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

No deberías tener `pass` en tu función `total_expenses`.

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
