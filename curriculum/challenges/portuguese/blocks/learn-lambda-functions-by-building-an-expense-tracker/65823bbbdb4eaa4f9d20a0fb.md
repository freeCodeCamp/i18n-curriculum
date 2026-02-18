---
id: 65823bbbdb4eaa4f9d20a0fb
title: Passo 25
challengeType: 20
dashedName: step-25
---

# --description--

Na função `total_expenses`, você agora integrará uma função lambda. Substitua `pass` por uma função lambda que tenha `expense` como seu parâmetro.

`expense` é esperado ser um dicionário e sua função lambda deve retornar o valor da chave `'amount'` no dicionário `expense`.

# --hints--

Você deve criar uma função `lambda` que use o parâmetro `expense` e retorne `expense['amount']` na sua função `total_expenses`.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

Você não deve ter `pass` na sua função `total_expenses`.

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
