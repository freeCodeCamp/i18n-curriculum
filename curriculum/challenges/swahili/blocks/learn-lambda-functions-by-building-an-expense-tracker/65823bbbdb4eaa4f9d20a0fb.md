---
id: 65823bbbdb4eaa4f9d20a0fb
title: Hatua 25
challengeType: 20
dashedName: step-25
---

# --description--

Katika kitendakazi cha `total_expenses`, sasa utaunganisha kitendakazi cha lambda. Badilisha `pass` na kitendakazi cha lambda chenye `expense` kama kigezo chake.

`expense` inatarajiwa kuwa kamusi, na kitendakazi chako cha lambda kinapaswa kurudisha thamani ya ufunguo wa `'amount'` katika kamusi ya `expense`.

# --hints--

Unapaswa kuunda kitendakazi cha `lambda` kinachotumia kigezo cha `expense` na kurudisha `expense['amount']` katika kitendakazi chako cha `total_expenses`.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

Haupasi kuwa na `pass` katika kitendakazi chako cha `total_expenses`.

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
