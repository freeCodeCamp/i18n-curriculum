---
id: 64de4bccf5becb208a48ca97
title: 步驟 13
challengeType: 20
dashedName: step-13
---

# --description--

在河內塔謎題中，你可以根據三根柱子的用途來識別它們：

- 第一根桿子是 `source`，在遊戲開始時所有的碟都堆疊在一起。
- 第二根桿子是輔助桿，並且它有助於將碟移動到標的桿。
- 第三根桿子是標的，所有的碟應該在遊戲結束時依序放置於此。

目前，`move()` 函式不接受任何參數。將函式宣告式更改為接受 4 個參數：`n`、`source`、`auxiliary` 和 `target`。然後，將 `NUMBER_OF_DISKS` 以及字串 `'A'`、`'B'` 和 `'C'` 作為引數傳遞給你的函式呼叫。順序很重要。

# --hints--

你的 `move()` 函式（程式）應該有 `n`、`source`、`auxiliary` 和 `target` 作為參數。順序很重要。

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

你應該將 `NUMBER_OF_DISKS` 和字串 `'A'`、`'B'` 以及 `'C'` 傳遞給 `move()`。順序很重要。

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
