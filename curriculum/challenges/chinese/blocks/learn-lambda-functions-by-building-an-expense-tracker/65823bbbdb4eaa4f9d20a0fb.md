---
id: 65823bbbdb4eaa4f9d20a0fb
title: 步骤 25
challengeType: 20
dashedName: step-25
---

# --description--

在 `total_expenses` 函数中，你现在将集成一个 lambda 函数。 用以 `expense` 作为参数的 lambda 函数替换 `pass`。

`expense` 应该是一个字典，并且你的 lambda 函数应该返回 `expense` 字典中 `'amount'` 键的值。

# --hints--

你应该创建一个 `lambda` 函数，该函数使用参数 `expense` 并在 `total_expenses` 函数中返回 `expense['amount']`。

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

你的 `total_expenses` 函数中不应有 `pass`。

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
