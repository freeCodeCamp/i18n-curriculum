---
id: 64de4bccf5becb208a48ca97
title: 步驟 13
challengeType: 20
dashedName: step-13
---

# --description--

在漢諾塔謎題中，你可以根據用途識別三根杆：

- 第一根杆是源頭，遊戲開始時，所有圓盤都堆疊在這裏。
- 第二根杆是輔助杆，它有助於將圓盤移動到目標杆。
- 第三根杆是目標，遊戲結束時所有圓盤應按順序擺放在此處。

目前，`move()` 函數不接受任何參數。 將函數聲明更改爲採用 4 個參數：`n`、`source`、`auxiliary` 和 `target`。 然後，將 `NUMBER_OF_DISKS` 和字符串 `'A'`、`'B'` 和 `'C'` 作爲參數傳遞給函數調用。 The order matters.

# --hints--

你的 `move()` 函數應該具有 `n`、`source`、`auxiliary` 和 `target` 作爲參數。 The order matters.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

你應該將 `NUMBER_OF_DISKS` 和字符串 `'A'`、`'B'` 和 `'C'` 傳遞給 `move()`。 記住參數傳遞的順序是很重要的。

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
