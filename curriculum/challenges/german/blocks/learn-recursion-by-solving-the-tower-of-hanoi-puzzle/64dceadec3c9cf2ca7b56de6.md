---
id: 64dceadec3c9cf2ca7b56de6
title: Schritt 25
challengeType: 20
dashedName: step-25
---

# --description--

Fügen Sie als Nächstes unter der verschachtelten `elif`-Anweisung eine weitere `if`-Anweisung hinzu, die ausgeführt werden soll, wenn `forward` `True` ist. Geben Sie innerhalb dieser Bedingung den folgenden f-String aus: `f'Moving disk {rods[source][-1]} from {source} to {target}'`.

# --hints--

Sie sollten eine `if`-Anweisung hinzufügen, die ausgeführt wird, wenn `forward` `True` ist, nach dem `elif`-Block.

```js
({ test: () => assert.match(code, /^\s{12}if\s+forward(\s*==\s*True)?\s*:/m) })
```

Sie sollten den angegebenen String innerhalb Ihrer neuen `if`-Anweisung ausgeben.

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
