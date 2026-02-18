---
id: 65823bbbdb4eaa4f9d20a0fb
title: 第 25 步
challengeType: 20
dashedName: step-25
---

# --description--

在 `total_expenses` 函式中，你現在將整合一個 lambda 函式。將 `pass` 替換為以 `expense` 為參數的 lambda 函式。

`expense` 預期是一個字典，而你的 lambda 函式應該傳回 `expense` 字典中 `'amount'` 鍵的值。

# --hints--

你應該在你的 `total_expenses` 函式（程式）中創建一個使用參數 `expense` 並傳回 `expense['amount']` 的 `lambda` 函式（程式）。

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

你不應該在你的 `total_expenses` 函式中使用 `pass`。

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
