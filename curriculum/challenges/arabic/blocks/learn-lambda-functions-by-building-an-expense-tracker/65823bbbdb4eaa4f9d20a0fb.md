---
id: 65823bbbdb4eaa4f9d20a0fb
title: الخطوة 25
challengeType: 20
dashedName: step-25
---

# --description--

في الدالة `total_expenses`، ستدمج الآن دالة lambda. استبدل `pass` بدالة lambda تستخدم `expense` كمعلمتها.

من المتوقع أن يكون `expense` قاموسًا، ويجب أن تُرجع دالة lambda القيمة الخاصة بالمفتاح `'amount'` في قاموس `expense`.

# --hints--

يجب أن تنشئ دالة `lambda` تستخدم المعلمة `expense` وتُرجع `expense['amount']` في دالة `total_expenses` الخاصة بك.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

يجب ألا يحتوي دالة `total_expenses` على `pass`.

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
