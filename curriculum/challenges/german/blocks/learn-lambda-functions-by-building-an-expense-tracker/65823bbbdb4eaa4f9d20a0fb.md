---
id: 65823bbbdb4eaa4f9d20a0fb
title: Schritt 25
challengeType: 20
dashedName: step-25
---

# --description--

In der `total_expenses`-Funktion integrieren Sie jetzt eine Lambda-Funktion. Ersetzen Sie `pass` durch eine Lambda-Funktion, die `expense` als Parameter hat.

`expense` soll ein Wörterbuch sein, und Ihre Lambda-Funktion soll den Wert des Schlüssels `'amount'` im Wörterbuch `expense` zurückgeben.

# --hints--

Sie sollten eine `lambda`-Funktion erstellen, die den Parameter `expense` verwendet und `expense['amount']` in Ihrer `total_expenses`-Funktion zurückgibt.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

Sie sollten kein `pass` in Ihrer `total_expenses`-Funktion haben.

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
