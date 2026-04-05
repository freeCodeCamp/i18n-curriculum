---
id: 64de79de2fac6b1536ebcfdd
title: 37단계
challengeType: 20
dashedName: step-37
---

# --description--

하노이 탑의 반복적 해결법은 완성된 것처럼 보일 수 있지만, 원판 수를 `4`으로 바꾸고 출력 결과를 확인하세요.

# --hints--

`NUMBER_OF_DISKS`을 4로 설정하세요.

```js
({ test: () => assert.equal(__userGlobals.get('NUMBER_OF_DISKS'), 4) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
NUMBER_OF_DISKS = 3
--fcc-editable-region--
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

def make_allowed_move(rod1, rod2):    
    forward = False
    if not rods[rod2]:
        forward = True
    elif rods[rod1] and rods[rod1][-1] < rods[rod2][-1]:
        forward = True      
                
    if forward:
        print(f'Moving disk {rods[rod1][-1]} from {rod1} to {rod2}')
        rods[rod2].append(rods[rod1].pop())
    else:
        print(f'Moving disk {rods[rod2][-1]} from {rod2} to {rod1}')
        rods[rod1].append(rods[rod2].pop())
    
    # display our progress
    print(rods, '\n')

def move(n, source, auxiliary, target):
    # display starting configuration
    print(rods, '\n')
    for i in range(number_of_moves):
        remainder = (i + 1) % 3
        if remainder == 1:
            print(f'Move {i + 1} allowed between {source} and {target}')
            make_allowed_move(source, target)
        elif remainder == 2:
            print(f'Move {i + 1} allowed between {source} and {auxiliary}')
            make_allowed_move(source, auxiliary)
        elif remainder == 0:
            print(f'Move {i + 1} allowed between {auxiliary} and {target}')
            make_allowed_move(auxiliary, target)

# initiate call from source A to target C with auxiliary B
move(NUMBER_OF_DISKS, 'A', 'B', 'C')
```
