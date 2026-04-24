---
id: 65823bbbdb4eaa4f9d20a0fb
title: ステップ 25
challengeType: 20
dashedName: step-25
---

# --description--

`total_expenses` 関数では、ラムダ関数を統合します。`pass` を、パラメータとして `expense` を持つラムダ関数に置き換えてください。

`expense` は辞書であることが期待されており、ラムダ関数は `'amount'` 辞書の `expense` キーの値を返す必要があります。

# --hints--

`lambda` 関数内で、パラメータ `expense` を使い `expense['amount']` を返す `total_expenses` 関数を作成してください。

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

`pass` 関数内に `total_expenses` を含めないでください。

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
