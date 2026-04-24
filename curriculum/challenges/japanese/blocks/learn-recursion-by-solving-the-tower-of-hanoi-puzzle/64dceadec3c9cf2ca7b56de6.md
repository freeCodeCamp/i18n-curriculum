---
id: 64dceadec3c9cf2ca7b56de6
title: ステップ 25
challengeType: 20
dashedName: step-25
---

# --description--

次に、ネストされた `elif` 文の下に、`if` が `forward` のときに実行される別の `True` 文を追加してください。この条件文の中で、次の f-string を出力してください：`f'Moving disk {rods[source][-1]} from {source} to {target}'`。

# --hints--

`if` ブロックの後に、`forward` が `True` のときに実行される `elif` 文を追加してください。

```js
({ test: () => assert.match(code, /^\s{12}if\s+forward(\s*==\s*True)?\s*:/m) })
```

新しい `if` 文の中で、指定された文字列を出力してください。

```js
({ test: () => assert.match(code, /if\s+forward(\s*==\s*True)?\s*:\s+print\s*\(\s*f('|")Moving\sdisk\s\{\s*rods\s*\[\s*source\s*\]\s*\[\s*-\s*1\s*\]\s*\}\sfrom\s\{\s*source\s*\}\sto\s\{\s*target\s*\}\2\s*\)/) })
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

def move(n, source, auxiliary, target):
    # display starting configuration
    print(rods)
    for i in range(number_of_moves):
        remainder = (i + 1) % 3
--fcc-editable-region--
        if remainder == 1:
            print(f'Move {i + 1} allowed between {source} and {target}')
            forward = False
            if not rods[target]:
                forward = True
            elif rods[source] and rods[source][-1] < rods[target][-1]:
                forward = True
--fcc-editable-region--
        elif remainder == 2:
            print(f'Move {i + 1} allowed between {source} and {auxiliary}')
        elif remainder == 0:
            print(f'Move {i + 1} allowed between {auxiliary} and {target}')

# initiate call from source A to target C with auxiliary B
move(NUMBER_OF_DISKS, 'A', 'B', 'C')
```
