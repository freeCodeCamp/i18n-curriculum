---
id: 65823bbbdb4eaa4f9d20a0fb
title: 25단계
challengeType: 20
dashedName: step-25
---

# --description--

`total_expenses` 함수에서 이제 람다 함수를 통합하세요. `pass`을 `expense`를 매개변수로 갖는 람다 함수로 바꾸세요.

`expense`는 사전이어야 하며, 람다 함수는 `'amount'` 사전에서 `expense` 키의 값을 반환해야 합니다.

# --hints--

`lambda` 함수에서 매개변수 `expense`를 사용하고 `expense['amount']`를 반환하는 `total_expenses` 함수를 만들어야 합니다.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("total_expenses").has_stmt("lambda expense: expense['amount']")`)) })
```

`pass` 함수에 `total_expenses`가 없어야 합니다.

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
