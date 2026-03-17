---
id: 65823bbbdb4eaa4f9d20a0fb
title: Passaggio 25
challengeType: 20
dashedName: step-25
---

# --description--

Nella funzione `total_expenses` integrerai ora una funzione lambda. Sostituisci `pass` con una funzione lambda che abbia `expense` come parametro.

`expense` dovrebbe essere un dizionario, e la tua funzione lambda dovrebbe restituire il valore della chiave `'amount'` nel dizionario `expense`.

# --hints--

Dovresti creare una funzione `lambda` che usa il parametro `expense` e restituisce `expense['amount']` nella tua funzione `total_expenses`.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

Non dovresti avere `pass` nella tua funzione `total_expenses`.

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
